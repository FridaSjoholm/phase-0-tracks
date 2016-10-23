require_relative "wordgame"

describe Game do
	let(:round) {Game.new("Tricky")}

	it "Creates array with underlines in initaliztion" do
		expect(round.array).to eq ["_","_","_","_","_","_"]
	end
	
	it "Compares if letter exist in word we are looking for, if so replaces underline with letter on correct space" do
		expect(round.compare("c")).to eq ["_","_","_","c","_","_"]
	end


	context "checks if already used letter before, by comparing to array withused letters" do
		before(:example) do
			@used_letters = ["a", "c", "g"]
		end 
		it "If never used letter, subract from guesscount" do
			expect(round.attempt("b")).to eq 11
		end
		it "if allready used letter, don't subract from guess_count" do
			expect(round.attempt("c")).to eq 11
		end
	end

end