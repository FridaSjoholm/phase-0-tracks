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
		it "If never used letter, subract from guess_count" do
			expect(round.attempt("b")).to eq 11
		end
		it "if allready used letter, don't subract from guess_count" do
			expect(round.attempt("b")).to eq 11
		end
	end

	context "When out of guesses:" do
		before do
			round.guess_count = 0
		end

		it "Returns over is true if have guessed too many times" do
			expect(round.done).to eq true
		end
	end
	
	context "When all the letters in word are found:" do
		before do
			round.guess_count = 4
			round.array = ["t", "r", "i", "c", "k", "y"]	
		end

		it "Returns over is true if word found" do
			expect(round.done).to eq true
		end
	end
end