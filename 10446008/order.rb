class Order
  attr_accessor :state

  def initialize(products = nil)
    @state = "pending"
    @products = products
  end

end