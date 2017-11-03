class Order
  attr_reader :state
  
  def initialize
    @state = "pending"
  end

end