require "pry"

class Multi_purchase_promotion < Promotion

    def initialize(name, min_quantity, price)
        @name = name
        @min_quantity = min_quantity
        @price = price
    end
    
    def apply_promotion(basket, total)
        
        items = basket.select{ |p| p.name==@name }
        
        if items.length >= @min_quantity
            discount = @price * items.length
            total -= discount
        end

        total
    end
end