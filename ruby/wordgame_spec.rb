require_relative 'wordgame'

describe WordGame do
  let(:guess) { WordGame.new("mystery") }

  it "stores correct mystery word array on initialization" do
    expect(guess.mystery_word_arr).to eq ["m", "y", "s", "t", "e", "r", "y"]
  end

  it "stores a correct guess array on initialization" do
    expect(guess.guess_arr).to eq ["_", "_", "_", "_", "_", "_", "_"]
  end

  it "sets max guesses equal to 1.5 times number of letters" do
    expect(guess.max_guesses).to eq 10
  end

  it "finds correct indices when correct letter is guessed" do
    guess.process_letter("y")
    expect(guess.letter_check_arr).to eq [false, true, false, false, false, false, true]
  end

  # it "retrieves an item by index" do
  #   expect(list.get_item(0)).to eq "do the dishes"
  # end
end