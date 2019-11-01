class Keys
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

  def set_keys
    element_array = @number.split("")
    @keys = {
      "A" => (element_array[0] + element_array[1]).to_i,
      "B" => (element_array[1] + element_array[2]).to_i,
      "C" => (element_array[2] + element_array[3]).to_i,
      "D" => (element_array[3] + element_array[4]).to_i
    }
  end
end
