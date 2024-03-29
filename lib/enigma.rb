class Enigma
  attr_reader :alphabet

  def initialize
    @alphabet = ("a".."z").to_a << " "
  end

  def encrypt(message, key = '%05d' % rand(99999), date = Time.now.strftime("%d%m%y"))
    shift = apply_shift(key, date)

    encrypted = rotate(message, shift)

    output = {encryption: encrypted.join, key: key, date: date}
  end

  def decrypt(message, key, date)
    shift = apply_shift(key, date)

    decrypted = rotate(message, shift, "backward")

    output = {decryption: decrypted.join, key: key, date: date}
  end

  def rotate(message, shift, direction = "forward")
    if direction == "backward"
      inverse_values = {}
      shift.each do |key, value|
        inverse_values[key] = -value
      end
      shift = inverse_values
    end
    message.chars.map.with_index do |character, index|
      position = @alphabet.index(character)
      if position == nil
        character
      elsif index % 4 == 0
        new_alpha = @alphabet.rotate(shift["A"] % 27)
        new_alpha[position]
      elsif index % 4 == 1
        new_alpha = @alphabet.rotate(shift["B"] % 27)
        new_alpha[position]
      elsif index % 4 == 2
        new_alpha = @alphabet.rotate(shift["C"] % 27)
        new_alpha[position]
      elsif index % 4 == 3
        new_alpha = @alphabet.rotate(shift["D"] % 27)
        new_alpha[position]
      end
    end
  end

  def apply_shift(key, date)
    Shift.set_shift(KeyGenerator.set_keys(key), OffsetGenerator.set_offset(date))
  end

end
