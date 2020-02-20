require "pry"

class Large_purchase_promotion < Promotion
    
    def initialize(limit_amount, discount)
        @limit_amout = limit_amount
        @discount = discount
    end
    
    def apply_promotion(basket, total)
        if total > 60
            discount = total / 100 * @discount
            total -= discount
        end
        total
    end
end