# -*- coding: utf-8 -*-
# vim: ft=sls

{%- from "cron/saltcheck-tests/map.jinja" import cron with context %}

cron.service:
{%- if 'enabled' not in cron or ( 'enabled' in cron and cron.enabled ) %}
  service.running:
    - name: {{ cron.service }}
    - enable: True
{%- else %}
  service.dead:
    - name: {{ cron.service }}
    - enable: False
{%- endif %}
