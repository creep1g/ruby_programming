require_relative "caesar_cipher"

describe "#caesar_cipher" do
	it "does nothing with an empty string" do
		expect(caesar_cipher("", 5)).to eq("")
	end

	it "correctly ciphers a single letter" do
		expect(caesar_cipher("a", 3)).to eq("d")
	end

	it "doesn't cipher without shift" do
		expect(caesar_cipher("b", 0)).to eq("b")
	end

	it "correctly ciphers a word" do
		expect(caesar_cipher("banana", 1)).to eq("cbobob")
	end

	it "correctly loops from z to a" do
		expect(caesar_cipher("z", 1)).to eq("a")
	end

	it "ignores non-letters" do
		expect(caesar_cipher("!@#z@%", 1)).to eq("!@#a@%")
	end

	it "correctly ignores spaces" do
		expect(caesar_cipher("a c", 2)).to eq("c e")
	end

	it "correctly handles capitalized letters" do
		expect(caesar_cipher("F", 25)).to eq("E")
	end

	it "correctly handles spaces, capitalized letters, non-letters, and z to a looping all at once" do
		expect(caesar_cipher("What a day!", 16)).to eq("Mxqj q tqo!")
	end

	it "correctly handles negative shift" do
		expect(caesar_cipher("b", -1)).to eq("a")
	end
end