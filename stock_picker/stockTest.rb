require_relative "stock_picker"

describe "#stock_picker" do
    it "Picks days to buy." do
        expect(stock_picker([17,3,6,9,15,8,6,1,10])).to eq([1, 4])
    end

    it "Picks days to buy." do 
        expect(stock_picker([1,5,6,8,9,2,2,2,2,])).to eq([0, 4])
    end
end