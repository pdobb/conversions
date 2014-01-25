require 'test_helper'

include Conversions

describe Conversions do
  describe ".Boolean" do
    it "returns true for truthy-looking values" do
      [true, 1, '1', 't', 'T', 'true', 'TRUE'].each do |value|
        assert { Boolean(value) }
      end
    end

    it "returns false for all non-truthy-looking values" do
      [false, 0, '0', 'f', 'F', 'false', 'FALSE', '', nil].each do |value|
        deny { Boolean(value) }
      end
    end
  end
end
