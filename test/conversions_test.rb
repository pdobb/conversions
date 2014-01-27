require 'test_helper'

include Conversions

describe Conversions do
  describe "Configuration" do
    describe "#conversion_methods" do
      # it "includes 'Boolean' by default" do
      #   assert { Conversions.configuration.conversion_methods.include?("Boolean") }
      # end

      it "is emptyable" do
        Conversions.configure do |config|
          config.conversion_methods = []
        end
        assert { Conversions.configuration.conversion_methods.empty? }
      end

      it "is customizable" do
        Conversions.configure do |config|
          config.conversion_methods = %w[Hello Goodbye]
        end
        assert { Conversions.configuration.conversion_methods == %w[Hello Goodbye] }
      end
    end
  end
end
