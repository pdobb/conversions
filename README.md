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
Conversions.Boolean(1) # => true
Conversions.Boolean("t") # => true
Conversions.Boolean("true") # => true
Conversions.Boolean(0) # => false
Conversions.Boolean("f") # => false
Conversions.Boolean("false") # => false
Conversions.Boolean("some_value") # => false
Conversions.Boolean(nil) # => false
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


## Author

- Paul Dobbins
