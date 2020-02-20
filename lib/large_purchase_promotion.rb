class Large_purchase_promotion
    include Promotion #make Large_purchase_promotion belong to Promotion "abstract class"

    def initialize(limit_amount, discount)

    end
    
    def apply_promotion(@@basket, total)

    end
end