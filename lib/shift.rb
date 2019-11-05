class Shift

  def self.set_shift(key, offset)
    shift = {
      "A" => key["A"] + offset["A"],
      "B" => key["B"] + offset["B"],
      "C" => key["C"] + offset["C"],
      "D" => key["D"] + offset["D"]
    }
  end
end
