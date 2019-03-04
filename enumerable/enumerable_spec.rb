new_proc = Proc.new do |element| ## Proc made to test if map takes procs
    element ** 2 ##
end ##
require_relative "enumerable"
describe "#enumerable" do

    it "my_select creates new array " do
        expect([3, 5, 4, 3, 5, 8].my_select { |num| num if num < 4}).to eq([3, 3])
    end

    it "my_all? returns true if all elements are true" do
        expect(["petur", "poul", "yohn", "goergey"].my_all? { |str| str.size == 5}).to eq(false)
    end

    it "my_any? returns true if one or more elements are true" do
        expect(["petur", "poul", "yohn", "goergey"].my_any? { |str| str.size == 7}).to eq(true)
    end

    it "my_none? returns true if no element match the condition" do
        expect(["petur", "poul", "yohn", "goergey"].my_none? { |str| str.size == 3}).to eq(true)
    end

    it "my_count returns number of elements. " do
        expect(["petur", "poul", "yohn", "goergey"].my_count).to eq(4)
    end

    it "my_count If a block is given, counts the number of elements yielding a true value." do
        expect([1, 2, 4, 2].my_count { |num| num % 2 == 0}).to eq(3)
    end

    it "my_map changes elements and returns a new array keeps original array unchanged" do
        expect([3,5,3,2].my_map { |num| num ** 2}).to eq([9, 25, 9, 4])
    end

    it "my_map takes works with procs" do
        expect([3,5,3,2].my_map(new_proc)).to eq([9, 25, 9, 4])
    end

    it "my_inject." do
        expect([1, 2, 3, 4].my_inject(2) { |result, element| result + element}).to eq(12)
    end

end
