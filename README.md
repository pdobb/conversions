# Conversions

This is a collection of conversion methods contained in a module named
Conversions. Reopen this module as needed to include any conversion methods.

## Compatibility

Tested with:

* Ruby: MRI 2.1.0 +

## Installation

Add this line to your application's Gemfile:

```ruby
gem "conversions", github: "pdobb/conversions"
```

And then execute:

```ruby
bundle
```

## Available Conversion Methods

* Boolean()
  * Based on the, now deprecated, [ActiveRecord::ConnectionAdapters::Column.value_to_boolean](http://www.rubydoc.info/docs/rails/ActiveRecord/ConnectionAdapters/Column.value_to_boolean).

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
