
Changelog
=========

`0.2.3 <https://github.com/saltstack-formulas/cron-formula/compare/v0.2.2...v0.2.3>`_ (2019-10-15)
------------------------------------------------------------------------------------------------------

Bug Fixes
^^^^^^^^^


* **platform:** add support for ``Arch`` (\ ` <https://github.com/saltstack-formulas/cron-formula/commit/a9968e3>`_\ )

Continuous Integration
^^^^^^^^^^^^^^^^^^^^^^


* **platform:** enable ``arch-base-latest`` (\ ` <https://github.com/saltstack-formulas/cron-formula/commit/525ecee>`_\ )

Documentation
^^^^^^^^^^^^^


* **contributing:** remove to use org-level file instead [skip ci] (\ ` <https://github.com/saltstack-formulas/cron-formula/commit/c12034a>`_\ )
* **readme:** update link to ``CONTRIBUTING`` [skip ci] (\ ` <https://github.com/saltstack-formulas/cron-formula/commit/eccccb6>`_\ )

Tests
^^^^^


* **pillar:** extract test pillar from ``pillar.example`` (\ ` <https://github.com/saltstack-formulas/cron-formula/commit/482e2d1>`_\ )

`0.2.2 <https://github.com/saltstack-formulas/cron-formula/compare/v0.2.1...v0.2.2>`_ (2019-10-12)
------------------------------------------------------------------------------------------------------

Bug Fixes
^^^^^^^^^


* **rubocop:** add fixes using ``rubocop --safe-auto-correct`` (\ ` <https://github.com/saltstack-formulas/cron-formula/commit/23fa917>`_\ )

Continuous Integration
^^^^^^^^^^^^^^^^^^^^^^


* **kitchen:** change ``log_level`` to ``debug`` instead of ``info`` (\ ` <https://github.com/saltstack-formulas/cron-formula/commit/dfa8565>`_\ )
* **kitchen:** install required packages to bootstrapped ``opensuse`` [skip ci] (\ ` <https://github.com/saltstack-formulas/cron-formula/commit/daf41cb>`_\ )
* **kitchen:** use bootstrapped ``opensuse`` images until ``2019.2.2`` [skip ci] (\ ` <https://github.com/saltstack-formulas/cron-formula/commit/91a050e>`_\ )
* **platform:** add ``arch-base-latest`` (commented out for now) [skip ci] (\ ` <https://github.com/saltstack-formulas/cron-formula/commit/dbeafde>`_\ )
* merge travis matrix, add ``salt-lint`` & ``rubocop`` to ``lint`` job (\ ` <https://github.com/saltstack-formulas/cron-formula/commit/fe3b733>`_\ )
* merge travis matrix, add ``salt-lint`` & ``rubocop`` to ``lint`` job (\ ` <https://github.com/saltstack-formulas/cron-formula/commit/ef8ac40>`_\ )
* use ``dist: bionic`` & apply ``opensuse-leap-15`` SCP error workaround (\ ` <https://github.com/saltstack-formulas/cron-formula/commit/e1d7d1b>`_\ )
* **travis:** merge ``rubocop`` linter into main ``lint`` job (\ ` <https://github.com/saltstack-formulas/cron-formula/commit/67c704c>`_\ )
* **yamllint:** add rule ``empty-values`` & use new ``yaml-files`` setting (\ ` <https://github.com/saltstack-formulas/cron-formula/commit/67475b0>`_\ )

`0.2.1 <https://github.com/saltstack-formulas/cron-formula/compare/v0.2.0...v0.2.1>`_ (2019-09-01)
------------------------------------------------------------------------------------------------------

Code Refactoring
^^^^^^^^^^^^^^^^


* **pillar:** sync map.jinja with template-formula (\ `e00c316 <https://github.com/saltstack-formulas/cron-formula/commit/e00c316>`_\ )

`0.2.0 <https://github.com/saltstack-formulas/cron-formula/compare/v0.1.0...v0.2.0>`_ (2019-08-28)
------------------------------------------------------------------------------------------------------

Continuous Integration
^^^^^^^^^^^^^^^^^^^^^^


* **kitchen:** add Kitchen tests (\ `963b5eb <https://github.com/saltstack-formulas/cron-formula/commit/963b5eb>`_\ )

Features
^^^^^^^^


* **semantic-release:** add semantic-release (\ `6002c8f <https://github.com/saltstack-formulas/cron-formula/commit/6002c8f>`_\ )
