# MeowCop

[![Gem Version](https://badge.fury.io/rb/meowcop.svg)](https://badge.fury.io/rb/meowcop)

MeowCop is a gem for RuboCop configuration, it focuses **Lint**.
It's recommended by Actcat inc.


## Design

RuboCop has many style cops. Style cops provide one of several settings.
So, sometime we get many many warnings when we introduce RuboCop. The cause is a mismatch between RuboCop's default setting and your project coding style.

In the configuration, style rules are disabled. Because the rules almost for project specific.
If you use, you can use RuboCop as a Linter without many noisy warnings.


If you want to use RuboCop as a style checker, we recommend [Gry](https://github.com/pocke/gry).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'meowcop'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install meowcop

## Configuration

MeowCop provides a CLI tool to initialise `.rubocop.yml`

```ruby
$ meowcop init
Meow! .rubocop.yml has been created successfully.
$ cat .rubocop.yml
# To use the MeowCop gem.
inherit_gem:
  meowcop:
    - config/rubocop.yml

# Modify the version if you don't use MRI 2.2.
AllCops:
  TargetRubyVersion: 2.2
  # If you use RuboCop with Ruby on Rails, specify TargetRailsVersion(default: 5.0).
  TargetRailsVersion: 5.0

Rails:
  # If you use RuboCop with Ruby on Rails, turn on this option.
  Enabled: false

# You can customize rubocop settings.
# For example.
# Style/FrozenStringLiteralComment:
#   Enabled: true
#   EnforcedStyle: always
```

### Example

https://github.com/sideci/meowcop/blob/master/examples/.rubocop.yml


## Usage

Just execute RuboCop.

```sh
$ bundle exec rubocop
```




## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/sideci/meowcop.
