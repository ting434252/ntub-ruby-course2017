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
      @items.map { |item|  item[:quantity]*item[:price] }.inject(:+)
    else
      0
    end
  end

end
