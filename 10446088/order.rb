class Order

  def initialize
    @status = "pending"
  end

  def state
    @status
  end

  def pay!
    @status = "paid"
  end
  
end
