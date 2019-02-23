require_relative "substrings"
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
  
describe "#substrings" do
    it "should return hash of matched substrings" do
        expect(substrings("below", dictionary)).to eq({ "below" => 1, "low" => 1 })
    end

    it "should be case insensitive." do
        expect(substrings("HoWdY", dictionary)).to eq({"how" => 1, "howdy" => 1})
    end

    it "should work with multiple words." do
        expect(substrings("Howdy partner, sit down! How's it going?", dictionary)).to eq({"how"=>2, "howdy"=>1, "part"=>1, "partner"=>1, "it"=>2, "i"=>3, "sit"=>1, "down"=>1, "own"=>1, "go"=>1, "going"=>1})
    end

end

