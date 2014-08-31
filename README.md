# Conversions

This is a collection of conversion methods contained in a module named
Conversions. Reopen this module as needed to include any conversion methods.


## Compatibility

* Ruby: MRI 1.9.3
* Ruby: MRI 2+


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'conversions', github: 'pdobb/conversions'
```

And then execute:

```ruby
bundle
```


## Available Conversion Methods

* Boolean()
  * Based on the now deprecated [ActiveRecord::ConnectionAdapters::Column.value_to_boolean](http://www.rubydoc.info/docs/rails/ActiveRecord/ConnectionAdapters/Column.value_to_boolean).
  * Returns `true` for truthy-looking values, `nil` for blank values, and otherwise `false`.
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
