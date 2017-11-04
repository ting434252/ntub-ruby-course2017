class Order
  attr_reader :state

  def initialize
  @state = "pending"  #狀態為未處理
  end
  
  def pay!
    @state = "paid"     #狀態為付款
  end

end
