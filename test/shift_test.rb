require './test/test_helper'
require './lib/shift'

def ShiftTest < Minitest::Test

  def setup
    @shift = Shift.new
  end
  def test_it_exists
    assert_instance_of Shift, @shift
  end

  def test_it_initializes
    
  end
end
