# Freistil::Rubocop

This gem contains the shared Rubocop style definitions for the freistil IT team.

## Installation

Add this line to your application's Gemfile:

```ruby
group :test, :development do
  gem 'freistil-rubocop'
end
```

Or, for a Ruby library, add this to your gemspec:

```ruby
spec.add_development_dependency 'freistil-rubocop'
```

And then run:

```bash
bundle install
```

## Usage

Create a `.rubocop.yml` with the following directives:

```yaml
inherit_gem:
  freistil-rubocop:
    - default.yml
```

Now, run:

```bash
bundle exec rubocop
```

You do not need to include rubocop directly in your application's dependencies. Percy-style will include a specific version of `rubocop` and `rubocop-rspec` that is shared across all projects.