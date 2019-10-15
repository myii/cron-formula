# Changelog

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
