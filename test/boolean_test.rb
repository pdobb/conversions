require "test_helper"

class ConversionsTest < Minitest::Spec
  describe Conversions do
    describe ".Boolean" do
      it "returns true for truthy-looking values" do
        [true, 1, "1", "t", "T", "true", "True", "TRUE"].each do |value|
          assert Conversions.Boolean(value), "Check `#{value}`"
        end
      end

      it "returns false for non-truthy-looking values" do
        [false, 0, "0", "f", "F", "false", "False", "FALSE", "", nil].each do |value|
          refute Conversions.Boolean(value), "Check `#{value}`"
        end
      end
    end
  end
end
