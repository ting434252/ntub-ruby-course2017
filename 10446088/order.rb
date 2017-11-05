class Order

  def initialize(goods = [])
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
    @goods.each do |good|
      total += good[:quantity] * good[:price]
    end
    total
  end
    
end
