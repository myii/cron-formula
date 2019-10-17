# -*- coding: utf-8 -*-
# vim: ft=sls

{%- from "cron/saltcheck-tests/map.jinja" import cron with context %}

{%- if 'tasks' in cron %}
{%-   for task, task_options in cron.tasks.items() %}

{%-     if task_options.type == 'absent' %}
validate_cron.{{ task }}_absent:
  module_and_function: cron.get_entry
  args:
    - {{ task_options.user|d('root') }}
    - {{ task }}
  assertion: assertFalse

{%-     elif task_options.type == 'present' %}
validate_cron.{{ task }}_exists:
  module_and_function: cron.get_entry
  args:
    - {{ task_options.user|d('root') }}
    - {{ task }}
  assertion: assertEqual
  assertion_section: identifier
  expected-return: {{ task }}

{#-       Note: `special` is `spec` in the module #}
{%-       for section in ['minute', 'hour', 'daymonth', 'month', 'dayweek', 'comment', 'spec'] %}
{%-         if section in task_options %}
validate_cron.{{ task }}_{{ section }}:
  module_and_function: cron.get_entry
  args:
    - {{ task_options.user|d('root') }}
    - {{ task }}
  assertion: assertEqual
  assertion_section: {{ section }}
  expected-return: '{{ task_options.get(section) }}'
{%-         endif %}
{%-       endfor %}

{%-       if 'commented' in task_options and task_options.commented %}
validate_cron.{{ task }}_commented:
  module_and_function: cron.get_entry
  args:
    - {{ task_options.user|d('root') }}
    - {{ task }}
  assertion: assertTrue
  assertion_section: commented
{%-       endif %}
{%-     endif %}

{%-   endfor %}
{%- endif %}
