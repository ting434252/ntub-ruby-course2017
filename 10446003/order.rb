# 作業 004

class Order
  attr_reader :status, :goods
  
  def initialize(goods = []) #給定預設值
    @status = "pending"
    @goods = goods
  end
  
  def state
    @status
  end
  
  def pay!
    @status = "paid"
  end
  
  def items
    @goods
  end
  
  def total_price
    total = 0
    goods.each do |good|
      total += good[:quantity] * good[:price]
    end
    return total
  end
  
end

