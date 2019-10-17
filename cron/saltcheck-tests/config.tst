# -*- coding: utf-8 -*-
# vim: ft=sls

{%- set cron = {
        'enabled': true,
        'tasks': {
            'task1': {
                'type': 'present',
                'name': 'echo test > /tmp/test',
                'user': 'root',
                'minute': 0,
                'hour': 0,
                'daymonth': 7,
                'month': 1,
                'dayweek': 6,
                'comment': 'comment1',
                'commented': false,
            },
            'task2': {
                'type': 'absent',
                'name': 'echo task2 > /tmp/test2',
                'user': 'root',
                'minute': 'random',
                'hour': 1,
            },
            'task3': {
                'type': 'present',
                'name': 'echo task3 > /tmp/test3',
                'user': 'root',
                'special': '@hourly',
                'comment': 'comment3',
            },
            'task4': {
                'type': 'present',
                'name': 'echo task4 > /tmp/test4',
                'user': 'root',
                'minute': '*/5',
                'hour': '*',
                'comment': 'comment4',
            },
            'task5': {
                'type': 'present',
                'name': 'echo task5 > /tmp/test5',
                'user': 'root',
                'minute': 'random',
                'hour': 1,
                'commented': true,
            },
        },
    } %}

{%- for task, task_options in cron.get('tasks', {}).items() %}
{%-   set cron_type = task_options.type|d('present') %}

validate_cron.{{ task }}_{{ cron_type }}:
  module_and_function: cron.get_entry
  args:
    - {{ task_options.user|d('root') }}
    - {{ task }}
  {%- if cron_type == 'absent' %}
  assertion: assertFalse
  {%- else %}
  assertion: assertEqual
  assertion_section: identifier
  expected-return: {{ task }}
  {%- endif %}

{%-   if cron_type == 'present' %}
validate_cron.{{ task }}_commented:
  module_and_function: cron.get_entry
  args:
    - {{ task_options.user|d('root') }}
    - {{ task }}
  assertion: {{ 'assertTrue' if task_options.commented|d(False) else 'assertFalse'}}
  assertion_section: commented

{#-       Note: `special` is `spec` in the module #}
{%-     for section in ['minute', 'hour', 'daymonth', 'month', 'dayweek', 'comment', 'spec'] %}
{%-       if section in task_options %}
{%-         set assertion = 'assertEqual' %}
{%-         set expected = task_options[section] %}
{%-         if expected == 'random' %}
{%-           set assertion = 'assertLessEqual' %}
{%-           set expected = 0 %}
{%-         endif %}
validate_cron.{{ task }}_{{ section }}:
  module_and_function: cron.get_entry
  args:
    - {{ task_options.user|d('root') }}
    - {{ task }}
  assertion: {{ assertion }}
  assertion_section: {{ section }}
  expected-return: '{{ expected }}'
{%-       endif %}
{%-     endfor %}
{%-   endif %}

{%- endfor %}
