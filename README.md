# MeowCop

[![Gem Version](https://badge.fury.io/rb/meowcop.svg)](https://badge.fury.io/rb/meowcop)

MeowCop is a gem for shareable [RuboCop](https://rubocop.org) configuration, it focuses on [lint](https://en.wikipedia.org/wiki/Lint_(software)) (not style).
It's recommended by [Sider](https://sider.review).

## Design

RuboCop has many stylistic rules (RuboCop calls a rule "Cop"). ["Style Cops"](https://docs.rubocop.org/rubocop/cops_style.html) provide one of several settings.
So, we encounter many many warnings when we introduce RuboCop. The cause is a mismatch between the RuboCop's default settings and your project's coding style.

In the configuration of MeowCop, almost all stylistic rules are disabled. Because such rules are almost specific for your project.
If you want, you can use RuboCop as a **linter** without many noisy warnings.

In contrast, if you want to use RuboCop as a style checker, we recommend [Gry](https://github.com/pocke/gry).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'meowcop'
```

And then execute:

```console
$ bundle install
```

Or install it yourself as:

```console
$ gem install meowcop
```

## Configuration

MeowCop provides a CLI tool to initialize `.rubocop.yml`. See below:

```console
$ meowcop init
Meow! .rubocop.yml has been created successfully.

$ cat .rubocop.yml
# To use the MeowCop gem.
inherit_gem:
  meowcop:
    - config/rubocop.yml

# You can customize RuboCop settings.
# For example.
# Style/FrozenStringLiteralComment:
#   Enabled: true
#   EnforcedStyle: always
```

See this [example](examples/.rubocop.yml).

## Usage

Just execute RuboCop with `.rubocop.yml` configured by MeowCop:

```console
$ bundle exec rubocop
```

Or,

```console
$ rubocop
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run:

```console
$ bundle exec rake install
```

To release a new version,

1. Move to the `main` branch and fetch the latest revision. E.g. `git checkout main && git pull`
2. Update the version number in [`version.rb`](lib/meowcop/version.rb).
3. Update the [changelog](CHANGELOG.md).
4. Commit the updated files with the following message: `Release x.y.z`
5. Run the `bundle exec rake release` command. This command will:
    - create a git tag for the new version
    - push the git commit and tag
    - push the `.gem` file to [rubygems.org](https://rubygems.org)

## Contributing

Bug reports and pull requests are welcome on GitHub at <https://github.com/sider/meowcop>.
