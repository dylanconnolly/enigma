class OffsetGenerator

  def self.set_offset(date)
    last_four = (date.to_i ** 2).to_s.split("")[-4..-1]

    offset = {
      "A" => last_four[0].to_i,
      "B" => last_four[1].to_i,
      "C" => last_four[2].to_i,
      "D" => last_four[3].to_i
    }
  end
end
