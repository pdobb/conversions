require 'test_helper'

include Conversions

describe Conversions do
  describe ".Boolean" do
    it "returns true for truthy-looking values" do
      [true, 1, '1', 't', 'T', 'true', 'TRUE'].each do |value|
        assert Boolean(value), "Check `#{value}`"
      end
    end

    it "returns false for non-truthy-looking values" do
      [false, 0, '0', 'f', 'F', 'false', 'FALSE', '', nil].each do |value|
        refute Boolean(value), "Check `#{value}`"
      end
    end
  end
end
