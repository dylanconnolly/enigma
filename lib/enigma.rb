class Enigma
  attr_reader :characters

  def initialize
    @characters = ("a".."z").to_a << " "
  end

  def encrypt(message, key = '%05d' % rand(99999), date)
    shift = apply_shift(key, date)

  end

  def apply_shift(key, date)
    Shift.set_shift(KeyGenerator.set_keys(key), OffsetGenerator.set_offset(date))
  end

end
