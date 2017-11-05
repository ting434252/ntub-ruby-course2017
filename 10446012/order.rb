class Order
  attr_reader :state, :products

  def initialize(products = [])
    @state = "pending"
    @products = products
  end

  def pay!
    @state = "paid"
  end
  
end
