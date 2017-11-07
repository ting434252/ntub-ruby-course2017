class Order
  attr_reader :state, :products
  def initialize
    @state = "pending"
  end
  
  def pay!
    @state = "paid"
  end
end
