# -*- coding: utf-8 -*-
# vim: ft=sls

{%- set service_name = 'crond' %}
{%- if grains.os_family in ['Debian', 'Suse'] %}
{%-   set service_name = 'cron' %}
{%- elif grains.os_family in ['Arch'] %}
{%-   set service_name = 'cronie' %}
{%- endif %}

verify_cron.service_available:
  module_and_function: service.available
  args:
    - {{ service_name }}
  assertion: assertTrue

verify_cron.service_enabled:
  module_and_function: service.enabled
  args:
    - {{ service_name }}
  assertion: assertTrue

verify_cron.service_running:
  module_and_function: service.status
  args:
    - {{ service_name }}
  assertion: assertTrue
