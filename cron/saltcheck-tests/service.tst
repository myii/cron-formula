# -*- coding: utf-8 -*-
# vim: ft=sls

{%- from "cron/saltcheck-tests/map.jinja" import cron with context %}

{%- set service_function = 'disabled' %}
{%- set service_running = 'assertFalse' %}
{%- if 'enabled' not in cron or ( 'enabled' in cron and cron.enabled ) %}
{%-   set service_function = 'enabled' %}
{%-   set service_running = 'assertTrue' %}
{%- endif %}

verify_cron.service_available:
  module_and_function: service.available
  args:
    - {{ cron.service }}
  assertion: assertTrue

verify_cron.service_{{ service_function }}:
  module_and_function: service.{{ service_function }}
  args:
    - {{ cron.service }}
  assertion: assertTrue

verify_cron.service_running:
  module_and_function: service.status
  args:
    - {{ cron.service }}
  assertion: {{ service_running }}
