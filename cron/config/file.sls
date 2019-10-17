# -*- coding: utf-8 -*-
# vim: ft=sls

{#- Get the `tplroot` from `tpldir` #}
{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import cron with context %}

{%- if 'tasks' in cron %}
  {%- for task, task_options in cron.tasks.items() %}

cron.{{ task }}:
  cron.{{ task_options.type|d('present') }}:
    - name: {{ task_options.name }}
    - identifier: '{{ task }}'
    - user: {{ task_options.user|d('root') }}
    - commented: {{ task_options.commented|d(False) }}
    {%- for section in ['minute', 'hour', 'daymonth', 'month', 'dayweek', 'comment', 'special'] %}
    {%-   if section in task_options %}
    - {{ section }}: '{{ task_options.get(section) }}'
    {%-   endif %}
    {%- endfor %}
  {%- endfor %}
{%- endif %}
