
Changelog
=========

`0.3.2 <https://github.com/saltstack-formulas/cron-formula/compare/v0.3.1...v0.3.2>`_ (2020-09-10)
------------------------------------------------------------------------------------------------------

Continuous Integration
^^^^^^^^^^^^^^^^^^^^^^


* **gemfile:** restrict ``train`` gem version until upstream fix [skip ci] (\ `ce61077 <https://github.com/saltstack-formulas/cron-formula/commit/ce610777803fa67ce4e8aa4e01823741ec5844af>`_\ )
* **gemfile.lock:** add to repo with updated ``Gemfile`` [skip ci] (\ `269b49f <https://github.com/saltstack-formulas/cron-formula/commit/269b49f38a304cf7ca63ae889f178a939353accd>`_\ )
* **kitchen:** avoid using bootstrap for ``master`` instances [skip ci] (\ `0afa1b1 <https://github.com/saltstack-formulas/cron-formula/commit/0afa1b10d2a4325880cfeda7f716d2eaf82edb4b>`_\ )
* **kitchen:** use ``saltimages`` Docker Hub where available [skip ci] (\ `74999aa <https://github.com/saltstack-formulas/cron-formula/commit/74999aa17df28a7128058697f6b5f4a59ab468c6>`_\ )
* **kitchen+travis:** remove ``master-py2-arch-base-latest`` [skip ci] (\ `54b5a1a <https://github.com/saltstack-formulas/cron-formula/commit/54b5a1abaad6b8a650ad48d1cee807c486e53c0b>`_\ )
* **travis:** add notifications => zulip [skip ci] (\ `fb46b07 <https://github.com/saltstack-formulas/cron-formula/commit/fb46b0799e4084a8b22f77d0c5c6b2179e20be01>`_\ )
* **travis:** apply changes from build config validation [skip ci] (\ `730df10 <https://github.com/saltstack-formulas/cron-formula/commit/730df1087fe44b7bc40bd9e2530188cb9c6ffcca>`_\ )
* **travis:** opt-in to ``dpl v2`` to complete build config validation [skip ci] (\ `4fc3960 <https://github.com/saltstack-formulas/cron-formula/commit/4fc3960112929de84d546e3547ce81f9685c5687>`_\ )
* **travis:** quote pathspecs used with ``git ls-files`` [skip ci] (\ `0fef6f1 <https://github.com/saltstack-formulas/cron-formula/commit/0fef6f12230e018b8c0402c80a2f2c98a1280ef9>`_\ )
* **travis:** run ``shellcheck`` during lint job [skip ci] (\ `1b2eb28 <https://github.com/saltstack-formulas/cron-formula/commit/1b2eb285a5bb62c86d6e7e64ddd76ce85a709d2b>`_\ )
* **travis:** use ``major.minor`` for ``semantic-release`` version [skip ci] (\ `d4a6100 <https://github.com/saltstack-formulas/cron-formula/commit/d4a610094969d583621cdec3195652508fe0aace>`_\ )
* **travis:** use build config validation (beta) [skip ci] (\ `db46bd9 <https://github.com/saltstack-formulas/cron-formula/commit/db46bd9c9008fddc3681602cf559513df3ee1976>`_\ )
* **workflows/commitlint:** add to repo [skip ci] (\ `449c919 <https://github.com/saltstack-formulas/cron-formula/commit/449c919f14dc295883de17db7b5b42dea1c56a2b>`_\ )

Reverts
^^^^^^^


* **codeowners:** update specific directories section [skip ci] (\ `2ac7785 <https://github.com/saltstack-formulas/cron-formula/commit/2ac7785f6446abf26d8e9897e7a5898f5bb42d1b>`_\ )

Styles
^^^^^^


* **state:** avoid complicated comparison (\ `496f09b <https://github.com/saltstack-formulas/cron-formula/commit/496f09b2e1c2ba88d8df95ec0c0011fce0d4a7a7>`_\ )

`0.3.1 <https://github.com/saltstack-formulas/cron-formula/compare/v0.3.0...v0.3.1>`_ (2019-11-04)
------------------------------------------------------------------------------------------------------

Tests
^^^^^


* **saltcheck:** add test for cron envs (\ ``absent`` & ``present``\ ) (\ `82cd0a7 <https://github.com/saltstack-formulas/cron-formula/commit/82cd0a7f3a2f5d61397b6cfc9a45470477dc51cf>`_\ )

`0.3.0 <https://github.com/saltstack-formulas/cron-formula/compare/v0.2.4...v0.3.0>`_ (2019-11-03)
------------------------------------------------------------------------------------------------------

Bug Fixes
^^^^^^^^^


* **release.config.js:** use full commit hash in commit link [skip ci] (\ `c5eb3b7 <https://github.com/saltstack-formulas/cron-formula/commit/c5eb3b78bcfa635ca7a2df01c03e5b60b4ed2758>`_\ )

Continuous Integration
^^^^^^^^^^^^^^^^^^^^^^


* **kitchen:** use ``debian-10-master-py3`` instead of ``develop`` [skip ci] (\ `aca0d9e <https://github.com/saltstack-formulas/cron-formula/commit/aca0d9e437c951f798fe097415746218d84dea58>`_\ )
* **kitchen:** use ``develop`` image until ``master`` is ready (\ ``amazonlinux``\ ) [skip ci] (\ `f9c61a9 <https://github.com/saltstack-formulas/cron-formula/commit/f9c61a98593a90d5d4f5b0119a2f486fe70ea133>`_\ )
* **kitchen+travis:** upgrade matrix after ``2019.2.2`` release [skip ci] (\ `2062f10 <https://github.com/saltstack-formulas/cron-formula/commit/2062f10f947155b051ce93e7636cbd9bdb604a6c>`_\ )

Features
^^^^^^^^


* **cron.env:** add env option in cron-formula (\ `12cee12 <https://github.com/saltstack-formulas/cron-formula/commit/12cee122279fc0abe113d35d59b626e2f94913ae>`_\ )

Performance Improvements
^^^^^^^^^^^^^^^^^^^^^^^^


* **travis:** improve ``salt-lint`` invocation [skip ci] (\ `624b05a <https://github.com/saltstack-formulas/cron-formula/commit/624b05a180a0013c0973e271e382cc46cf12b9c5>`_\ )

`0.2.4 <https://github.com/saltstack-formulas/cron-formula/compare/v0.2.3...v0.2.4>`_ (2019-10-23)
------------------------------------------------------------------------------------------------------

Bug Fixes
^^^^^^^^^


* **saltcheck:** fix broken import and standardise across test files (\ ` <https://github.com/saltstack-formulas/cron-formula/commit/7911b71>`_\ )
* **saltcheck:** fix invalid ``service`` test (\ ` <https://github.com/saltstack-formulas/cron-formula/commit/677c956>`_\ )
* **saltcheck:** remove trailing spaces (\ ` <https://github.com/saltstack-formulas/cron-formula/commit/aada0ae>`_\ )
* **saltcheck:** replace ``map.jinja`` references with InSpec conditionals (\ ` <https://github.com/saltstack-formulas/cron-formula/commit/7e9e619>`_\ )
* **saltcheck:** update for ``cron`` instead of ``cron_settings`` (\ ` <https://github.com/saltstack-formulas/cron-formula/commit/26cfa4f>`_\ )

Code Refactoring
^^^^^^^^^^^^^^^^


* **config:** minimise and standardise between ``.sls`` & ``.tst`` (\ ` <https://github.com/saltstack-formulas/cron-formula/commit/18585bd>`_\ )
* **config:** remove duplication in using a loop (\ ` <https://github.com/saltstack-formulas/cron-formula/commit/652ebff>`_\ )
* **jinja:** used shortened form of ``|default`` filter (\ ` <https://github.com/saltstack-formulas/cron-formula/commit/a0f891e>`_\ )
* **saltcheck:** relocate ``.tst`` files according to 1:1 ``.sls`` files (\ ` <https://github.com/saltstack-formulas/cron-formula/commit/ee65236>`_\ ), closes `/github.com/saltstack-formulas/cron-formula/pull/4#issuecomment-544140377 <https://github.com//github.com/saltstack-formulas/cron-formula/pull/4/issues/issuecomment-544140377>`_
* **saltcheck:** use ``package.tst`` instead of ``install.tst`` (\ ` <https://github.com/saltstack-formulas/cron-formula/commit/d2c9544>`_\ )
* **saltcheck:** use root-level ``saltcheck-tests`` directory (\ ` <https://github.com/saltstack-formulas/cron-formula/commit/6e54c3f>`_\ )

Continuous Integration
^^^^^^^^^^^^^^^^^^^^^^


* **travis:** obtain ``saltcheck.py`` and run the tests (only on ``develop``\ ) (\ ` <https://github.com/saltstack-formulas/cron-formula/commit/8ae46e5>`_\ )
* **travis:** run ``salt-lint`` for ``.tst`` files as well (\ ` <https://github.com/saltstack-formulas/cron-formula/commit/baab964>`_\ )
* **travis:** standardise ``saltcheck`` comments (\ ` <https://github.com/saltstack-formulas/cron-formula/commit/e23276b>`_\ )
* **travis:** update ``salt-lint`` config for ``v0.0.10`` [skip ci] (\ ` <https://github.com/saltstack-formulas/cron-formula/commit/b701d79>`_\ )

Styles
^^^^^^


* **config.tst:** rearrange Jinja statements for clarity (\ ` <https://github.com/saltstack-formulas/cron-formula/commit/8abec54>`_\ )
* **saltcheck:** merge ``absent`` & ``present`` into one ``if`` block (\ ` <https://github.com/saltstack-formulas/cron-formula/commit/33f344c>`_\ )
* **saltcheck:** use consistent order of assertions (\ ` <https://github.com/saltstack-formulas/cron-formula/commit/88229f0>`_\ )

Tests
^^^^^


* **pillar:** add test for ``commented`` and clarify each test (\ ` <https://github.com/saltstack-formulas/cron-formula/commit/3d0dcb2>`_\ )
* **pillar:** ensure ``special`` is being tested as well (\ ` <https://github.com/saltstack-formulas/cron-formula/commit/951a959>`_\ )
* **saltcheck:** add first tests (\ ` <https://github.com/saltstack-formulas/cron-formula/commit/9847aff>`_\ )
* **saltcheck:** add support for ``random`` values (\ ` <https://github.com/saltstack-formulas/cron-formula/commit/007970f>`_\ )
* **saltcheck:** add test for ``service.available`` (\ ` <https://github.com/saltstack-formulas/cron-formula/commit/226eb88>`_\ )
* **saltcheck:** add test for ``service.running`` (\ ` <https://github.com/saltstack-formulas/cron-formula/commit/5cdc50f>`_\ )
* **saltcheck:** avoid ``map.jinja``\ , use the test pillar instead (\ ` <https://github.com/saltstack-formulas/cron-formula/commit/cce5e67>`_\ )
* **saltcheck:** fix ``config`` tests (\ ` <https://github.com/saltstack-formulas/cron-formula/commit/9225b18>`_\ )
* **saltcheck:** remove duplication in ``config.tst`` using a loop (\ ` <https://github.com/saltstack-formulas/cron-formula/commit/72281c7>`_\ )
* **saltcheck:** test for ``commented`` and not ``commented`` (\ ` <https://github.com/saltstack-formulas/cron-formula/commit/5070611>`_\ )
* **saltcheck:** test for ``special`` in ``config.tst`` as well (\ ` <https://github.com/saltstack-formulas/cron-formula/commit/6f2b323>`_\ )
* **saltcheck:** use local ``map.jinja`` to workaround missing ``tpldata`` (\ ` <https://github.com/saltstack-formulas/cron-formula/commit/8845b3c>`_\ )

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
