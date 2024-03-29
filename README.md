# Capistrano::ZeitwerkCheck

This gem runs `bin/rails zeitwerk:check` before all Capistrano tasks, to avoids NameError on production.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'capistrano-zeitwerk_check', git: "https://github.com/socioart/capistrano-zeitwerk_check", tag: "v0.1.0"
```

And then execute:

    $ bundle install

## Usage

in Capfile add following line.

    require "capistrano/zeitwerk_check"

If you want to skip check, please set `skip_zeitwerk_check` variable to `true`.

    set :skip_zeitwerk_check, true

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/labocho/capistrano-zeitwerk_check.


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
