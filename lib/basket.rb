class Basket
    attr_reader :promotions

    @@basket = []

    def initialize
        @promotions = [Multi_purchase_promotion.new("Very Cheap Chair", 2, 9.25), Large_purchase_promotion.new(60, 10)]
    end

    def scan(product)
        @@basket << product
    end

    def total
        total = @@basket.sum {|product| product.price} 
        for promotion in @promotions do
            total_with_discount = promotion.apply_promotion(@@basket, total)
        end
    end
end