require "pry"
require "Promotion"
require "Multi_purchase_promotion"
require "Large_purchase_promotion"

class Basket

    attr_reader :basket, :promotions

    def initialize
        @basket = []
        @promotions = [Multi_purchase_promotion.new("Very Cheap Chair", 2, 0.75), Large_purchase_promotion.new(60, 10)]
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