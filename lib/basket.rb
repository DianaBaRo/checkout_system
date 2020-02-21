require "pry"
require "Promotion"
require "MultiPurchasePromotion"
require "LargePurchasePromotion"

class Basket

    attr_reader :basket, :promotions

    def initialize
        @basket = []
        multi = MultiPurchasePromotion.new("Very Cheap Chair", 2, 0.75)
        large = LargePurchasePromotion.new(60, 10)
        @promotions = [multi, large]
    end

    def scan(product)
        @basket << product
    end

    def total
        total = 0
        @basket.each { |p| total += p.price }

        for promotion in @promotions do
            total = promotion.apply_promotion(@basket, total)
        end
        total.round(2)
    end
end