require "pry"

class LargePurchasePromotion < Promotion
    
    def initialize(limit_amount, discount)
        @limit_amount = limit_amount
        @discount = discount
    end
    
    def apply_promotion(basket, total)
        if total > @limit_amount
            discount = total / 100 * @discount
            total -= discount
        end
        total
    end
end