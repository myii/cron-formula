# -*- coding: utf-8 -*-
# vim: ft=sls

{%- from "cron/saltcheck-tests/map.jinja" import cron with context %}

{%- set service_function = 'disabled' %}
{%- if 'enabled' not in cron or ( 'enabled' in cron and cron.enabled ) %}
{%-   set service_function = 'enabled' %}
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
