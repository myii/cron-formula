# -*- coding: utf-8 -*-
# vim: ft=sls

{%- from "cron/saltcheck-tests/map.jinja" import cron with context %}

{%- if 'tasks' in cron %}
  {%- for task,task_options in cron.tasks.items() %}

    {%- if task_options.type == 'present' %}
validate_cron.{{ task }}_exists:
  module_and_function: cron.get_entry
  args:
    - {{ task_options.user|default('root') }}
    - {{ task }}
  assertion: assertEqual
  assertion_section: identifier
  expected-return: {{ task }}

      {%- if 'minute' in task_options %}
validate_cron.{{ task }}_minute:
  module_and_function: cron.get_entry
  args:
    - {{ task_options.user|default('root') }}
    - {{ task }}
  assertion: assertEqual
  assertion_section: minute
  expected-return: '{{ task_options.minute }}'
      {%- endif %}

      {%- if 'hour' in task_options %}
validate_cron.{{ task }}_hour:
  module_and_function: cron.get_entry
  args:
    - {{ task_options.user|default('root') }}
    - {{ task }}
  assertion_section: hour
  assertion: assertEqual
  expected-return: '{{ task_options.hour }}'
      {%- endif %}

      {%- if 'daymonth' in task_options %}
validate_cron.{{ task }}_daymonth:
  module_and_function: cron.get_entry
  args:
    - {{ task_options.user|default('root') }}
    - {{ task }}
  assertion_section: daymonth
  assertion: assertEqual
  expected-return: '{{ task_options.daymonth }}'
      {%- endif %}

      {%- if 'month' in task_options %}
validate_cron.{{ task }}_month:
  module_and_function: cron.get_entry
  args:
    - {{ task_options.user|default('root') }}
    - {{ task }}
  assertion_section: month
  assertion: assertEqual
  expected-return: '{{ task_options.month }}'
      {%- endif %}

      {%- if 'dayweek' in task_options %}
validate_cron.{{ task }}_dayweek:
  module_and_function: cron.get_entry
  args:
    - {{ task_options.user|default('root') }}
    - {{ task }}
  assertion_section: dayweek
  assertion: assertEqual
  expected-return: '{{ task_options.dayweek }}'
      {%- endif %}

      {%- if 'comment' in task_options %}
validate_cron.{{ task }}_comment:
  module_and_function: cron.get_entry
  args:
    - {{ task_options.user|default('root') }}
    - {{ task }}
  assertion_section: comment
  assertion: assertEqual
  expected-return: {{ task_options.comment }}
      {%- endif %}

      {%- if 'commented' in task_options and task_options.commented %}
validate_cron.{{ task }}_commented:
  module_and_function: cron.get_entry
  args:
    - {{ task_options.user|default('root') }}
    - {{ task }}
  assertion_section: commented
  assertion: assertTrue
      {%- endif %}
    {%- endif %}

  {%- if task_options.type == 'absent' %}
validate_cron.{{ task }}_absent:
  module_and_function: cron.get_entry
  args:
    - {{ task_options.user|default('root') }}
    - {{ task }}
  assertion: assertFalse
  {%- endif %}

  {%- endfor %}
{%- endif %}
