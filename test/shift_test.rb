require './test/test_helper'
require './lib/shift'

def ShiftTest < Minitest::Test

  def setup
    @shift = Shift.new
  end
  def test_it_exists
    assert_instance_of Shift, @shift
  end

  def test_it_generates_a_random_five_digit_number
    assert_equal 5, @shift.random_key.length
  end
end
