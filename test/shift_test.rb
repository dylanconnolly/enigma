require './test/test_helper'
require './lib/shift'
require './lib/keys'
require './lib/offset'

class ShiftTest < Minitest::Test

  def setup
    @shift = Shift.new
  end

  def test_it_exists
    assert_instance_of Shift, @shift
  end

  def test_it_initializes_with_alphabet_array
    expected = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", " "]
    assert_equal expected, @shift.alphabet
  end

  def test_it_can_set_shift_values
    keys = Keys.new("12345")
    offset = Offset.new("010919")

    expected = {
      "A" => 16,
      "B" => 28,
      "C" => 40,
      "D" => 46
    }
    assert_equal expected, @shift.set_shift(keys.set_keys, offset.set_offset)
  end
end
