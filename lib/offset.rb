class Offset
  attr_reader :date

  def initialize(date)
    @date = date
  end

  def square_date
    @date.to_i ** 2
  end

  def last_four
    square_date.to_s.split("")[-4..-1]

  end

  def set_offset
    offset = {
      "A" => last_four[0].to_i,
      "B" => last_four[1].to_i,
      "C" => last_four[2].to_i,
      "D" => last_four[3].to_i
    }
  end
end
