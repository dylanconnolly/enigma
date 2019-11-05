require './test/test_helper'
require './lib/shift'
require './lib/key_generator'
require './lib/offset_generator'
require './lib/enigma'

class EnigmaTest < Minitest::Test

  def setup
    @enigma = Enigma.new
  end

  def test_it_exists
    assert_instance_of Enigma, @enigma
  end

  def test_encrypt_properly_sets_shift
    expected = {
      "A" => 8 + 6,
      "B" => 83 + 3,
      "C" => 30 + 2,
      "D" => 4 + 4
    }

    assert_equal expected, @enigma.apply_shift("08304", "291018")
  end

  def test_encrypt
    expected =  {
      encryption: "vjqtbeaweqihssi",
      key: "08304",
      date: "291018"
    }

    assert_equal expected, @enigma.encrypt("hello world end", "08304", "291018")
  end

end
