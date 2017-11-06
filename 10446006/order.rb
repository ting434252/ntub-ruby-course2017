class Order
  attr_reader :state

  def initialize
    @state = "pending"
  end

  def pay!
    @state = "paid"
  end
end
