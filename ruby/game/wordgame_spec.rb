require_relative "wordgame"

describe Game do
	let(:round) {Game.new("Tricky")}

	it "Creates array with underlines in initaliztion" do
		expect(round.array).to eq ["_","_","_","_","_","_"]
	end
	
	it "Compares if letter exist in word we are looking for, if so replaces underline with letter on correct space" do
		expect(round.compare("c")).to eq ["_","_","_","c","_","_"]
	end

end