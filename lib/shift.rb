class Shift
  attr_reader :alphabet

  def initialize
    @alphabet = ("a".."z").to_a << " "
  end

  def random_key
    "%05d" % rand(99999)
  end

end
