class Order
  attr_reader :state

  def initialize
  @state = "pending"  #狀態為未處理
  end

end
