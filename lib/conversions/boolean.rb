module Conversions
  module_function

  # Convert boolean-like representations to a boolean value.
  # @param [Object] value the object to be converted
  # @example
  #   Boolean(1) # => true
  #   Boolean('1') # => true
  #   Boolean('t') # => true
  #   Boolean(true) # => true
  def Boolean(value)
    if value.is_a?(String) && value.blank?
      nil
    else
      [true, 1, '1', 't', 'T', 'true', 'TRUE'].include?(value)
    end
  end
end
