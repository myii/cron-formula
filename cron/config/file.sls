# -*- coding: utf-8 -*-
# vim: ft=sls

{#- Get the `tplroot` from `tpldir` #}
{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import cron with context %}

{%- if 'tasks' in cron %}
  {%- for task,task_options in cron.tasks.items() %}

cron.{{ task }}:
  cron.{{ task_options.type|default('present') }}:
    - name: {{ task_options.name }}
    {%- if 'user' in task_options %}
    - user: {{ task_options.user|default('root') }}
    {%- endif %}
    {%- if 'minute' in task_options %}
    - minute: '{{ task_options.minute }}'
    {%- endif %}
    {%- if 'hour' in task_options %}
    - hour: '{{ task_options.hour }}'
    {%- endif %}
    {%- if 'daymonth' in task_options %}
    - daymonth: '{{ task_options.daymonth }}'
    {%- endif %}
    {%- if 'month' in task_options %}
    - month: '{{ task_options.month }}'
    {%- endif %}
    {%- if 'dayweek' in task_options %}
    - dayweek: '{{ task_options.dayweek }}'
    {%- endif %}
    {%- if 'commented' in task_options and task_options.commented %}
    - commented: True
    {%- endif %}
    {%- if 'special' in task_options %}
    - special: '{{ task_options.special }}'
    {%- endif %}
    - identifier: '{{ task }}'
    {%- if 'comment' in task_options %}
    - comment: {{ task_options.comment }}
    {%- endif %}

  {%- endfor %}
{%- endif %}
