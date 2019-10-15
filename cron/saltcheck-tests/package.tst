# -*- coding: utf-8 -*-
# vim: ft=sls

{%- from "cron/saltcheck-tests/map.jinja" import cron with context %}

verify_cron.package:
  module_and_function: pkg.version
  args:
    - {{ cron.pkg }}
  assertion: assertNotEmpty
