# -*- coding: utf-8 -*-
# vim: ft=sls

{#- Get the `tplroot` from `tpldir` #}
{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import cron with context %}

cron.service:
{%- if 'enabled' not in cron or ( 'enabled' in cron and cron.enabled ) %}
  service.running:
    - name: {{ cron.service }}
    - enable: True
    - reload: False
{%- else %}
  service.dead:
    - name: {{ cron.service }}
    - enable: False
{%- endif %}
