class KeyGenerator
  attr_reader :keys

  def initialize(number = '%05d' % rand(99999))
    @number = number
    @keys = {
      "A" => nil,
      "B" => nil,
      "C" => nil,
      "D" => nil
    }
  end

  def self.set_keys(number = '%05d' % rand(99999))
    number_array = number.split("")
    @keys = {
      "A" => (number_array[0] + number_array[1]).to_i,
      "B" => (number_array[1] + number_array[2]).to_i,
      "C" => (number_array[2] + number_array[3]).to_i,
      "D" => (number_array[3] + number_array[4]).to_i
    }
  end
end
