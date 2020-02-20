class Promotion
    def apply_promotion
        fail NotImplementedError, "A promotion class must have a type of promotion"
    end
end