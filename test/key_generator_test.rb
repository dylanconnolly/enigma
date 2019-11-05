require './test/test_helper'
require './lib/key_generator'

class KeysTest < Minitest::Test

  def setup
    @key_generator = KeyGenerator.new("12345")
  end

  def test_it_exists
    assert_instance_of KeyGenerator, @key_generator
  end

  def test_it_initializes_with_hash_of_keys
    expected = {
      "A" => nil,
      "B" => nil,
      "C" => nil,
      "D" => nil
    }
    assert_equal expected, @key_generator.keys
  end

  def test_set_keys
    expected = {
      "A" => 12,
      "B" => 23,
      "C" => 34,
      "D" => 45
    }
    assert_equal expected, @key_generator.set_keys
  end
end
