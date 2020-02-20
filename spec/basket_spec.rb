require 'basket'

describe Basket do
  
    before (:each) do
        @product1 = Product.new('001', 'Very Cheap Chair', 9.25)
        @product2 = Product.new('002', 'Litte table', 45)
        @product3 = Product.new('003', 'Funky Light', 19.95)
    end

    it "has an empty basket when initialized" do
        expect(subject.basket).to eq([])
    end

    it 'can scan an item' do
        subject.scan(@product1)
        expect(subject.basket.length).to eq 1
    end

    it 'does not apply any discount if quantity is not enough' do
        subject.scan(@product1)
        subject.scan(@product2)

        total = subject.total
        
        expect(total).to eq 54.25
    end

    it 'does not apply any discount if item is not in offer' do
        subject.scan(@product3)
        subject.scan(@product3)

        total = subject.total
        
        expect(total).to eq 39.9
    end

    it "can apply 10% off when spend over £60" do
        subject.scan(@product1)
        subject.scan(@product2)
        subject.scan(@product3)
        expect(subject.total).to eq 66.78
    end
    
    it "can apply discount when buy 2 or more Very Cheap Chairs" do
        subject.scan(@product1)
        subject.scan(@product3)
        subject.scan(@product1)
        expect(subject.total).to eq 36.95
    end

    it "can apply 10% off when spend over £60 and discount when buy 2 or more Very Cheap Chairs" do
        subject.scan(@product1)
        subject.scan(@product2)
        subject.scan(@product1)
        subject.scan(@product3)
        expect(subject.total).to eq 73.76
    end
end