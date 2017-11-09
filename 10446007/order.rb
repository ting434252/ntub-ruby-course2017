class Order
    attr_accessor :state

    def initialize(products=[])
        @state = "pending"
        @products = products
    end

    def pay!
        @state = "paid"
    end

end


