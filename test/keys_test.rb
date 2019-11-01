require './test/test_helper'
require './lib/keys'

class KeysTest < Minitest::Test

  def setup
    @keys = Keys.new("12345")
  end

  def test_it_exists
    assert_instance_of Keys, @keys
  end

  def test_it_initializes_with_hash_of_keys
    expected = {
      "A" => 0,
      "B" => 0,
      "C" => 0,
      "D" => 0
    }
    assert_equal expected, @keys.keys
  end

  def test_set_keys
    expected = {
      "A" => 12,
      "B" => 23,
      "C" => 34,
      "D" => 45
    }
    assert_equal expected, @keys.set_keys
end
