class Order
    attr_accessor :state

    def initialize(products=[])
        @state = "pending"
    end

end


