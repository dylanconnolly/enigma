require './test/test_helper'
require './lib/shift'
require './lib/key_generator'
require './lib/offset_generator'

class ShiftTest < Minitest::Test

  def test_it_can_set_shift_by_combining_keys_and_offet
    keys = KeyGenerator.set_keys("12345")
    offset = OffsetGenerator.set_offset("010919")

    expected = {
      "A" => 16,
      "B" => 28,
      "C" => 40,
      "D" => 46
    }
    assert_equal expected, Shift.set_shift(keys, offset)
  end
end
