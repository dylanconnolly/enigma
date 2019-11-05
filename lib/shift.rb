class Shift
  attr_reader :alphabet

  def initialize
    @alphabet = ("a".."z").to_a << " "
  end

  def set_shift(key, offset)
    shift = {
      "A" => key["A"] + offset["A"],
      "B" => key["B"] + offset["B"],
      "C" => key["C"] + offset["C"],
      "D" => key["D"] + offset["D"]
    }
  end
end
