
class Order 
    attr_accessor :state
    def initialize
        @state = 'pending'
    end
    
    def pay!
        @state = 'paid'
    end

end
