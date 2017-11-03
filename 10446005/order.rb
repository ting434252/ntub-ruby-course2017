class Order


  attr_reader :items
  attr_reader :state

  def initialize(products=[])

    @state = "pending"
    if !products.empty?
      @items = products
    end
  end

  def pay!

    @state = "paid"
    "paid"
  end

  def total_price
    
    if !@items.empty?
      @items.map { |item|  item_total(item) }.inject(:+)
    else
      0
    end
  end

  private
  def item_total(item)

    item[:quantity].to_i*item[:price].to_i
  end

end
