class Enigma

  def encrypt(message, key = '%05d' % rand(99999), date)
    Shift.set_shift(KeyGenerator.set_keys(key), OffsetGenerator.set_offset(date))
  end

end
