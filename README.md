# MeowCop

[![Gem Version](https://badge.fury.io/rb/meowcop.svg)](https://badge.fury.io/rb/meowcop)

MeowCop is a RuboCop configuration recommended by Actcat inc.

In the configuration, style rules are disabled. Because the rules almost for project specific.
However, lint rules are enabled.

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

# Modify the version if you don't use MRI 2.1.
AllCops:
  TargetRubyVersion: 2.1

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
