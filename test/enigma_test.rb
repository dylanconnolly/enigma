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

  def test_encrypt
    expected =  {
      encryption: "vjqtbeaweqihssi",
      key: "08304",
      date: "291018"
    }

    assert_equal expected, @enigma.encrypt("hello world end", "08304", "291018")
  end

end
