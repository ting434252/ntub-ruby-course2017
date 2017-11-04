class Order
  attr_reader :state
  attr_reader :products
  def initialize(product=[])
    #初始化訂單為未處狀態
    @state = "pending"
    #傳參數給實體變數
    @products = product
  end
end
