class Multi_purchase_promotion
    include Promotion #make Multi_purchase_promotion belong to Promotion "abstract class"

    def initializer(name, min_quantity, price)

    end
    
    def apply_promotion(basket, total)

    end
end