class Order
  def initialized(status)
    @status = status
  end
  
  def state
    @status = "pending"
  end
end