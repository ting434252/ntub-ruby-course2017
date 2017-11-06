class Order
  attr_reader :status

  def initialize
    @status = "pending"
  end

  def state
    @status
  end

end
