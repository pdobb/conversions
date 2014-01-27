require_relative "conversions/configuration"
Conversions.configuration.conversion_methods.each do |method_name|
  require_relative "conversions/#{method_name.downcase}"
end

# Reopen this module as needed to include any conversion methods.
# Note: This is a common pattern so may be used by other gems.
module Conversions
end
