module Conversions
  module_function

  # Convert boolean-like representations to a boolean value.
  # @param [Object] value the object to be converted
  # @example
  #   Boolean(true) # => true
  #   Boolean(1) # => true
  #   Boolean("1") # => true
  #   Boolean("t") # => true
  #   Boolean("T") # => true
  #   Boolean("true") # => true
  #   Boolean("True") # => true
  #   Boolean("TRUE") # => true
  def Boolean(value)
    if value.is_a?(String) && value =~ /\s.*/
      nil
    else
      [true, 1, "1", "t", "T", "true", "True", "TRUE"].include?(value)
    end
  end
end
