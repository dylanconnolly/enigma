require './test/test_helper'
require './lib/offset'

class OffsetTest < Minitest::Test

  def setup
    @offset = Offset.new("010919")
  end

  def test_it_exists
    assert_instance_of Offset, @offset
  end

  def test_it_intializes_with_a_date
    assert_equal "010919", @offset.date
  end

  def test_it_can_square_the_date
    assert_equal 119_224_561, @offset.square_date
  end

  def test_it_can_get_last_four_digits_of_squared_date
    assert_equal "4561", @offset.last_four
  end
end
