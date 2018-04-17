# Conversions

[![Build Status](https://travis-ci.org/pdobb/conversions.svg?branch=master)](https://travis-ci.org/pdobb/conversions)
[![Test Coverage](https://api.codeclimate.com/v1/badges/956c8208edb879b85534/test_coverage)](https://codeclimate.com/github/pdobb/conversions/test_coverage)
[![Maintainability](https://api.codeclimate.com/v1/badges/956c8208edb879b85534/maintainability)](https://codeclimate.com/github/pdobb/conversions/maintainability)

This is a collection of conversion methods contained in a module named Conversions. Reopen this module as needed to include any conversion methods.


## Installation

Add this line to your application's Gemfile:

```ruby
gem "conversions", github: "pdobb/conversions"
```

And then execute:

    $ bundle


## Compatibility

Tested MRI Ruby Versions:
* 2.2.10
* 2.3.7
* 2.4.4
* 2.5.1
* edge



## Available Conversion Methods

- Boolean()
  - Based on the old [ActiveRecord::ConnectionAdapters::Column.value_to_boolean](http://www.rubydoc.info/docs/rails/ActiveRecord/ConnectionAdapters/Column.value_to_boolean).
  - Returns `true` for truthy-looking values, `nil` for blank values, and otherwise `false`.
  - See [`lib/conversions/boolean.rb`](https://github.com/pdobb/conversions/blob/master/lib/conversions/boolean.rb) for full behavior.


## Usage

You can either call the conversion method directly from the Conversions module:

```ruby
Conversions.Boolean(1)             # => true
Conversions.Boolean("t")           # => true
Conversions.Boolean("true")        # => true
Conversions.Boolean(0)             # => false
Conversions.Boolean("f")           # => false
Conversions.Boolean("false")       # => false
Conversions.Boolean("some_value")  # => false
Conversions.Boolean(nil)           # => false
```

Or, you can include the Conversions module first:

```ruby
include Conversions

Boolean(1) # => true
Boolean("t") # => true
Boolean("true") # => true
Boolean(0) # => false
Boolean("f") # => false
Boolean("false") # => false
Boolean("some_value") # => false
Boolean(nil) # => false
```


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/pdobb/conversions.


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
