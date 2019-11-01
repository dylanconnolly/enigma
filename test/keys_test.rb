require './test/test_help'

class KeysTest < Minitest::Test

  def setup
    @keys = Keys.new("12345")
  end

  def test_it_exists
    assert_instance_of Keys, @keys
  end
end
