module Promotion
    def apply_promotion(basket, total)
        fail NotImplementedError, "A promotion class must have a type of promotion"
    end
end