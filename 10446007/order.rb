class Order
    attr_accessor :state

    def initialize(products=[])
        @state = "pending"
        @products = products
    end

    def pay!
        @state = "paid"
    end

    def items
        @products
    end

    def total_price
        amount = 0
        for product in @products
            price, quantity = product[:price], product[:quantity]
            if price>0 && quantity>0
            amount += price * quantity 
            end
        end
        amount
    end
end


