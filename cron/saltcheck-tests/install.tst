# -*- coding: utf-8 -*-
# vim: ft=sls

{%- from "cron/map.jinja" import cron_settings with context %}

verify_cron.install:
  module_and_function: pkg.version
  args:
    - {{ cron_settings.pkg }}
  assertion: assertNotEmpty
