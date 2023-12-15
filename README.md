# DVLA::Lint

This Gem contains the official DVLA Ruby linting rules for all of the Agency's Ruby-based work. It's a fork of the GDS rules contained in GOVUK-Lint (as of commit [0d2d442
](https://github.com/alphagov/govuk-lint/commit/0d2d4423703f4975e63768a75095e3b989f02d21)) repackaged without with Sass or CLI components and updated to DVLA's house style.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'dvla-lint", "~> <major_version>.<minor_version>'
```

And then execute:

```shell
bundle
```

Or install it yourself as:

```shell
gem install dvla-lint
```

## Usage

With the gem added to your Gemfile and installed, execute this to install the default DVLA Rubocop configuration in your current directory:

```shell
bundle exec dvla-lint init
```
