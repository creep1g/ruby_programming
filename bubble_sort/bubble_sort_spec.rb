require_relative "bubble_sort"

describe "#bubble_sort" do 
    it "does something" do
        expect(bubble_sort([4,3,78,2,0,2])).to eq([0,2,2,3,4,78])
    end
    it "does sort" do 
        expect(bubble_sort_by(["hi","hello","hey"]){|left,right| left.length - right.length}).to eq(["hi", "hey", "hello"])
    end
end
