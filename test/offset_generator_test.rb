require './test/test_helper'
require './lib/offset_generator'

class OffsetGeneratorTest < Minitest::Test

  def test_set_offset
    expected = {
      "A" => 4,
      "B" => 5,
      "C" => 6,
      "D" => 1
    }
    assert_equal expected, OffsetGenerator.set_offset("010919")
  end
end
