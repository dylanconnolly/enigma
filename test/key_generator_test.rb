require './test/test_helper'
require './lib/key_generator'

class KeyGeneratorTest < Minitest::Test

  def test_set_keys
    expected = {
      "A" => 12,
      "B" => 23,
      "C" => 34,
      "D" => 45
    }
    assert_equal expected, KeyGenerator.set_keys("12345")
  end
end
