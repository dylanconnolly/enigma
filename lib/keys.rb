class Keys
  attr_reader :keys

  def initialize(rand_number = '%05d' % rand(99999))
    @keys = {
      "A" => 0,
      "B" => 0,
      "C" => 0,
      "D" => 0
    }
    @random_number = rand_number
  end
end
