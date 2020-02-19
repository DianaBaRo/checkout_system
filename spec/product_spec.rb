require_relative '../lib/product.rb'

describe Product do
    it 'has a code, a name and a price' do
        product = Product.new('001', 'Very Cheap Chair', 9.25)
        expect(product.code).to eq '001'
        expect(product.name).to eq 'Very Cheap Chair'
        expect(product.price).to eq 9.25
    end
end