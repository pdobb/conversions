# Conversions

This is a collection of conversion methods contained in a module named
Conversions. Reopen this module as needed to include any conversion methods.

## Compatibility

Tested with:

* Ruby: MRI 1.9.3
* Ruby: MRI 2.0.0
* Ruby: MRI 2.1.0

## Installation

Add this line to your application's Gemfile:

```ruby
gem "conversions", github: "pdobb/conversions"
```

And then execute:

```ruby
bundle
```

## Configuration

Create an initializer to set custom configuration options, if needed.

```ruby
# config/initializers/conversions.rb

Conversions.configure do |config|
  config.conversion_methods = ["Boolean"]
end
```

Currently the only configuration option is `conversion_methods`, which is an Array of Conversion Method names to be required during gem initialization (by default this is set to `["Boolean"]`). The following section lists the available Conversion Method names.

## Available Conversion Methods

* Boolean()
  * Based on the, now deprecated, [ActiveRecord::ConnectionAdapters::Column.value_to_boolean](http://www.rubydoc.info/docs/rails/ActiveRecord/ConnectionAdapters/Column.value_to_boolean).
  * Returns true for truthy-looking values, nil for blank values, otherwise false.
  * The set of truthy-looking values is viewable in the source under `lib/conversions/boolean.rb`.

## Usage

You can either call the conversion method directly from the Conversions module:

```ruby
Conversions.Boolean("t") # => true
Conversions.Boolean("some_value") # => false
```

Or, you can include the Conversions module first:

```ruby
include Conversions

Boolean("t") # => true
Boolean("some_value") # => false
```

## Author

- Paul Dobbins
