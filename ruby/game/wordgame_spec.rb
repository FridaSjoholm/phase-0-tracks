require_relative "wordgame"

describe Game do
	let(:round) {Game.new("Tricky")}

	it "Creates array with underlines in initaliztion" do
		expect(round.array).to eq ["_","_","_","_","_","_"]
	end
	
end