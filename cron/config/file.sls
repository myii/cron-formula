# -*- coding: utf-8 -*-
# vim: ft=sls

{#- Get the `tplroot` from `tpldir` #}
{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import cron with context %}

{%- for task, task_options in cron.get('tasks', {}).items() %}
{%-   set cron_type = task_options.type|d('present') %}

cron.{{ task }}:
  cron.{{ cron_type }}:
    - name: {{ task_options.name }}
    - user: {{ task_options.user|d('root') }}
    - identifier: '{{ task }}'
    {%- if cron_type == 'present' %}
    - commented: {{ task_options.commented|d(False) }}
    {%-   for section in ['minute', 'hour', 'daymonth', 'month', 'dayweek', 'comment', 'special'] %}
    {%-     if section in task_options %}
    - {{ section }}: '{{ task_options[section] }}'
    {%-     endif %}
    {%-   endfor %}
    {%- endif %}

{%- endfor %}

{%- for env, env_options in cron.get('env', {}). items() %}
{%-   set env_type = env_options.type|d('present') %}

cron.{{ env }}:
  cron.env_{{ env_type }}:
    - name: {{ env_options.name }}
    {%- if env_type == 'present' %}
    - value: {{ env_options.value }}
    {%- endif %}
    - user: {{ env_options.user|d('root') }}

{%- endfor %}
