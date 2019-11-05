require './test/test_helper'
require './lib/offset_generator'

class OffsetTest < Minitest::Test

  def setup
    @offset_generator = OffsetGenerator.new("010919")
  end

  def test_it_exists
    assert_instance_of OffsetGenerator, @offset_generator
  end

  def test_it_intializes_with_a_date
    assert_equal "010919", @offset_generator.date
  end

  def test_it_can_square_the_date
    assert_equal 119_224_561, @offset_generator.square_date
  end

  def test_it_can_get_last_four_digits_of_squared_date
    assert_equal ["4","5","6","1"], @offset_generator.last_four
  end

  def test_set_offset
    expected = {
      "A" => 4,
      "B" => 5,
      "C" => 6,
      "D" => 1
    }
    assert_equal expected, @offset_generator.set_offset
  end
end
