# Changelog

## Unreleased

- [#121](https://github.com/sider/meowcop/pull/121): Drop support for Ruby 2.4
- [00608a5](https://github.com/sider/meowcop/commit/00608a559a2acd363047b7f64b1e6d1c692e1b34): Rename main branch from `master` to `main`

## 3.0.1 (2020-12-02)

- [#117](https://github.com/sider/meowcop/pull/117): Loosen the max value of `Metrics/BlockNesting`

## 3.0.0 (2020-11-18)

- [#113](https://github.com/sider/meowcop/pull/113): Simplify config file via RuboCop 1.0 (**breaking**)

## 2.15.1 (2020-10-22)

- [#111](https://github.com/sider/meowcop/pull/111): Allow RuboCop requirement v1.0.0

## 2.15.0 (2020-10-09)

- [#110](https://github.com/sider/meowcop/pull/110): Follow up RuboCop v0.93

## 2.14.0 (2020-09-08)

- [#107](https://github.com/sider/meowcop/pull/107): Follow up RuboCop v0.90
- [#108](https://github.com/sider/meowcop/pull/108): Remove `AllCops.TargetRubyVersion`

## 2.13.0 (2020-08-06)

- [#104](https://github.com/sider/meowcop/pull/104): Follow up RuboCop v0.89

## 2.12.0 (2020-07-14)

- [#103](https://github.com/sider/meowcop/pull/103): Follow up RuboCop v0.88

## 2.11.0 (2020-07-08)

- [#100](https://github.com/sider/meowcop/pull/100): Follow up RuboCop v0.87

## 2.10.0 (2020-07-01)

- [#97](https://github.com/sider/meowcop/pull/97): Follow up RuboCop v0.86
- [#98](https://github.com/sider/meowcop/pull/98): Empower CLI

## 2.9.0 (2020-04-17)

- [#92](https://github.com/sider/meowcop/pull/92): Follow up RuboCop v0.82 (breaking)

### Breaking Change

RuboCop 0.82 has dropped the support for Ruby 2.3. It requires Ruby 2.4+.

## 2.8.0 (2020-02-19)

- [#89](https://github.com/sider/meowcop/pull/89): Follow up RuboCop v0.80 (breaking)

## 2.7.0 (2019-12-19)

- [#84](https://github.com/sider/meowcop/pull/84): Follow up RuboCop v0.78 (breaking)

## 2.6.0 (2019-11-28)

- [#82](https://github.com/sider/meowcop/pull/82): Change the gem's author
- [#83](https://github.com/sider/meowcop/pull/83): Follow up RuboCop v0.77 (including breaking changes)

## 2.5.0 (2019-10-29)

- [#80](https://github.com/sider/meowcop/pull/80): Follow up of RuboCop v0.76 (including breaking changes)

## 2.4.0 (2019-10-08)

- [#69](https://github.com/sider/meowcop/pull/69): Lighten the archived gem size
- [#73](https://github.com/sider/meowcop/pull/73): Follow up of RuboCop v0.74 and v0.75
- [#74](https://github.com/sider/meowcop/pull/74): Set `>= 2.3.0` to `required_ruby_version`
- [#76](https://github.com/sider/meowcop/pull/76): Disable all Style Cops automatically

## 2.3.1 (2019-10-01)

- [#68](https://github.com/sider/meowcop/pull/68): Revert "Disable all Style Cops"

## 2.3.0 (2019-10-01)

- [#62](https://github.com/sider/meowcop/pull/62): Disable all Style Cops
- [#63](https://github.com/sider/meowcop/pull/63): Exclude `node_modules` directory

## 2.2.0 (2019-08-30)

This release does not add any features but adds the license: **MIT**.
This may have an impact on certain users, so we decided it appropriate that this release is a minor update, not a patch update.

- [#56](https://github.com/sider/meowcop/pull/56): Add license and update gemspec

## 2.1.0 (2019-07-17)

- [#54](https://github.com/sider/meowcop/pull/54): Follow up of RuboCop v0.73

## 2.0.0 (2019-06-26)

- [#50](https://github.com/sider/meowcop/pull/50): Follow up of RuboCop v0.72.0 (including a breaking change, see below)

### Breaking Change

Since version 2, MeowCop has stopped supporting Rails Cops. Because RuboCop v0.72 has separated Rails Cops from its core gem to another [`rubocop-rails`](https://github.com/rubocop-hq/rubocop-rails) gem. For details, please see [the v0.72 changelog](https://github.com/rubocop-hq/rubocop/blob/v0.72.0/CHANGELOG.md) and [the related issue](https://github.com/rubocop-hq/rubocop/issues/5976).

If you want to continue using Rails Cops which were disabled by MeowCop v1, please copy the Cops in the following past config file and paste them to your `.rubocop.yml` file:

<https://github.com/sider/meowcop/blob/v1.20.0/config/rubocop.yml#L68-L97>

## 1.20.0 (2019-05-14)

- [#44](https://github.com/sider/meowcop/pull/44): Follow up of RuboCop v0.69.0

## 1.19.0 (2019-05-07)

- [#41](https://github.com/sider/meowcop/pull/41): Rename some cops to follow up of Rubocop v0.68
- [#42](https://github.com/sider/meowcop/pull/42): RuboCop v0.68

## 1.18.0 (2019-04-05)

- [#37](https://github.com/sider/meowcop/pull/37): Fix typo
- [#40](https://github.com/sider/meowcop/pull/40): Follow up of new cops (v0.67)

## 1.17.1 (2018-09-11)

- [#34](https://github.com/sider/meowcop/pull/34): Follow up of new cops (v0.59.0)

## 1.17.0 (2018-06-18)

- [#31](https://github.com/sider/meowcop/pull/31): Follow up of new cops (v0.57.0)

## 1.16.1 (2018-06-18)

- [#28](https://github.com/sider/meowcop/pull/28): Fix unrecognized cops warnings
- [#29](https://github.com/sider/meowcop/pull/29): Follow up of new cops (v0.54.0 ~ v0.56.0)

## 1.16.0 (2018-05-15)

- [#26](https://github.com/sider/meowcop/pull/26): Split Style/MethodMissing to follow RuboCop 0.56.0

