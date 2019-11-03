# Changelog

# [0.3.0](https://github.com/saltstack-formulas/cron-formula/compare/v0.2.4...v0.3.0) (2019-11-03)


### Bug Fixes

* **release.config.js:** use full commit hash in commit link [skip ci] ([c5eb3b7](https://github.com/saltstack-formulas/cron-formula/commit/c5eb3b78bcfa635ca7a2df01c03e5b60b4ed2758))


### Continuous Integration

* **kitchen:** use `debian-10-master-py3` instead of `develop` [skip ci] ([aca0d9e](https://github.com/saltstack-formulas/cron-formula/commit/aca0d9e437c951f798fe097415746218d84dea58))
* **kitchen:** use `develop` image until `master` is ready (`amazonlinux`) [skip ci] ([f9c61a9](https://github.com/saltstack-formulas/cron-formula/commit/f9c61a98593a90d5d4f5b0119a2f486fe70ea133))
* **kitchen+travis:** upgrade matrix after `2019.2.2` release [skip ci] ([2062f10](https://github.com/saltstack-formulas/cron-formula/commit/2062f10f947155b051ce93e7636cbd9bdb604a6c))


### Features

* **cron.env:** add env option in cron-formula ([12cee12](https://github.com/saltstack-formulas/cron-formula/commit/12cee122279fc0abe113d35d59b626e2f94913ae))


### Performance Improvements

* **travis:** improve `salt-lint` invocation [skip ci] ([624b05a](https://github.com/saltstack-formulas/cron-formula/commit/624b05a180a0013c0973e271e382cc46cf12b9c5))

## [0.2.4](https://github.com/saltstack-formulas/cron-formula/compare/v0.2.3...v0.2.4) (2019-10-23)


### Bug Fixes

* **saltcheck:** fix broken import and standardise across test files ([](https://github.com/saltstack-formulas/cron-formula/commit/7911b71))
* **saltcheck:** fix invalid `service` test ([](https://github.com/saltstack-formulas/cron-formula/commit/677c956))
* **saltcheck:** remove trailing spaces ([](https://github.com/saltstack-formulas/cron-formula/commit/aada0ae))
* **saltcheck:** replace `map.jinja` references with InSpec conditionals ([](https://github.com/saltstack-formulas/cron-formula/commit/7e9e619))
* **saltcheck:** update for `cron` instead of `cron_settings` ([](https://github.com/saltstack-formulas/cron-formula/commit/26cfa4f))


### Code Refactoring

* **config:** minimise and standardise between `.sls` & `.tst` ([](https://github.com/saltstack-formulas/cron-formula/commit/18585bd))
* **config:** remove duplication in using a loop ([](https://github.com/saltstack-formulas/cron-formula/commit/652ebff))
* **jinja:** used shortened form of `|default` filter ([](https://github.com/saltstack-formulas/cron-formula/commit/a0f891e))
* **saltcheck:** relocate `.tst` files according to 1:1 `.sls` files ([](https://github.com/saltstack-formulas/cron-formula/commit/ee65236)), closes [/github.com/saltstack-formulas/cron-formula/pull/4#issuecomment-544140377](https://github.com//github.com/saltstack-formulas/cron-formula/pull/4/issues/issuecomment-544140377)
* **saltcheck:** use `package.tst` instead of `install.tst` ([](https://github.com/saltstack-formulas/cron-formula/commit/d2c9544))
* **saltcheck:** use root-level `saltcheck-tests` directory ([](https://github.com/saltstack-formulas/cron-formula/commit/6e54c3f))


### Continuous Integration

* **travis:** obtain `saltcheck.py` and run the tests (only on `develop`) ([](https://github.com/saltstack-formulas/cron-formula/commit/8ae46e5))
* **travis:** run `salt-lint` for `.tst` files as well ([](https://github.com/saltstack-formulas/cron-formula/commit/baab964))
* **travis:** standardise `saltcheck` comments ([](https://github.com/saltstack-formulas/cron-formula/commit/e23276b))
* **travis:** update `salt-lint` config for `v0.0.10` [skip ci] ([](https://github.com/saltstack-formulas/cron-formula/commit/b701d79))


### Styles

* **config.tst:** rearrange Jinja statements for clarity ([](https://github.com/saltstack-formulas/cron-formula/commit/8abec54))
* **saltcheck:** merge `absent` & `present` into one `if` block ([](https://github.com/saltstack-formulas/cron-formula/commit/33f344c))
* **saltcheck:** use consistent order of assertions ([](https://github.com/saltstack-formulas/cron-formula/commit/88229f0))


### Tests

* **pillar:** add test for `commented` and clarify each test ([](https://github.com/saltstack-formulas/cron-formula/commit/3d0dcb2))
* **pillar:** ensure `special` is being tested as well ([](https://github.com/saltstack-formulas/cron-formula/commit/951a959))
* **saltcheck:** add first tests ([](https://github.com/saltstack-formulas/cron-formula/commit/9847aff))
* **saltcheck:** add support for `random` values ([](https://github.com/saltstack-formulas/cron-formula/commit/007970f))
* **saltcheck:** add test for `service.available` ([](https://github.com/saltstack-formulas/cron-formula/commit/226eb88))
* **saltcheck:** add test for `service.running` ([](https://github.com/saltstack-formulas/cron-formula/commit/5cdc50f))
* **saltcheck:** avoid `map.jinja`, use the test pillar instead ([](https://github.com/saltstack-formulas/cron-formula/commit/cce5e67))
* **saltcheck:** fix `config` tests ([](https://github.com/saltstack-formulas/cron-formula/commit/9225b18))
* **saltcheck:** remove duplication in `config.tst` using a loop ([](https://github.com/saltstack-formulas/cron-formula/commit/72281c7))
* **saltcheck:** test for `commented` and not `commented` ([](https://github.com/saltstack-formulas/cron-formula/commit/5070611))
* **saltcheck:** test for `special` in `config.tst` as well ([](https://github.com/saltstack-formulas/cron-formula/commit/6f2b323))
* **saltcheck:** use local `map.jinja` to workaround missing `tpldata` ([](https://github.com/saltstack-formulas/cron-formula/commit/8845b3c))

## [0.2.3](https://github.com/saltstack-formulas/cron-formula/compare/v0.2.2...v0.2.3) (2019-10-15)


### Bug Fixes

* **platform:** add support for `Arch` ([](https://github.com/saltstack-formulas/cron-formula/commit/a9968e3))


### Continuous Integration

* **platform:** enable `arch-base-latest` ([](https://github.com/saltstack-formulas/cron-formula/commit/525ecee))


### Documentation

* **contributing:** remove to use org-level file instead [skip ci] ([](https://github.com/saltstack-formulas/cron-formula/commit/c12034a))
* **readme:** update link to `CONTRIBUTING` [skip ci] ([](https://github.com/saltstack-formulas/cron-formula/commit/eccccb6))


### Tests

* **pillar:** extract test pillar from `pillar.example` ([](https://github.com/saltstack-formulas/cron-formula/commit/482e2d1))

## [0.2.2](https://github.com/saltstack-formulas/cron-formula/compare/v0.2.1...v0.2.2) (2019-10-12)


### Bug Fixes

* **rubocop:** add fixes using `rubocop --safe-auto-correct` ([](https://github.com/saltstack-formulas/cron-formula/commit/23fa917))


### Continuous Integration

* **kitchen:** change `log_level` to `debug` instead of `info` ([](https://github.com/saltstack-formulas/cron-formula/commit/dfa8565))
* **kitchen:** install required packages to bootstrapped `opensuse` [skip ci] ([](https://github.com/saltstack-formulas/cron-formula/commit/daf41cb))
* **kitchen:** use bootstrapped `opensuse` images until `2019.2.2` [skip ci] ([](https://github.com/saltstack-formulas/cron-formula/commit/91a050e))
* **platform:** add `arch-base-latest` (commented out for now) [skip ci] ([](https://github.com/saltstack-formulas/cron-formula/commit/dbeafde))
* merge travis matrix, add `salt-lint` & `rubocop` to `lint` job ([](https://github.com/saltstack-formulas/cron-formula/commit/fe3b733))
* merge travis matrix, add `salt-lint` & `rubocop` to `lint` job ([](https://github.com/saltstack-formulas/cron-formula/commit/ef8ac40))
* use `dist: bionic` & apply `opensuse-leap-15` SCP error workaround ([](https://github.com/saltstack-formulas/cron-formula/commit/e1d7d1b))
* **travis:** merge `rubocop` linter into main `lint` job ([](https://github.com/saltstack-formulas/cron-formula/commit/67c704c))
* **yamllint:** add rule `empty-values` & use new `yaml-files` setting ([](https://github.com/saltstack-formulas/cron-formula/commit/67475b0))

## [0.2.1](https://github.com/saltstack-formulas/cron-formula/compare/v0.2.0...v0.2.1) (2019-09-01)


### Code Refactoring

* **pillar:** sync map.jinja with template-formula ([e00c316](https://github.com/saltstack-formulas/cron-formula/commit/e00c316))

# [0.2.0](https://github.com/saltstack-formulas/cron-formula/compare/v0.1.0...v0.2.0) (2019-08-28)


### Continuous Integration

* **kitchen:** add Kitchen tests ([963b5eb](https://github.com/saltstack-formulas/cron-formula/commit/963b5eb))


### Features

* **semantic-release:** add semantic-release ([6002c8f](https://github.com/saltstack-formulas/cron-formula/commit/6002c8f))
