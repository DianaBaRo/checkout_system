require "pry"

class MultiPurchasePromotion < Promotion

    def initialize(name, min_quantity, discount_amount)
        @name = name
        @min_quantity = min_quantity
        @discount_amount = discount_amount
    end
    
    def apply_promotion(basket, total)
        
        items = basket.select{ |p| p.name==@name }
        
        if items.length >= @min_quantity
            discount = @discount_amount * items.length
            total -= discount
        end
        total
    end
end