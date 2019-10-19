# -*- coding: utf-8 -*-
# vim: ft=sls

{%- set package_name = 'cronie' %}
{%- if grains.os_family in ['Debian'] %}
{%-   set package_name = 'cron' %}
{%- endif %}

verify_cron.package:
  module_and_function: pkg.version
  args:
    - {{ package_name }}
  assertion: assertNotEmpty
