class Order
  attr_accessor :status

  def initialize(products)
    @status = "pending"
    
  end
  
  def state
    @status 
  end

  def pay!
    @status = "paid"
  end

  def items(products)
    
  end  

  

end

