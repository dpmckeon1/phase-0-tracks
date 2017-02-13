require_relative 'wordgame'

describe WordGame do
  let(:game) { WordGame.new("mystery") }

  it "stores correct mystery word array on initialization" do
    expect(game.mystery_word_arr).to eq ["m", "y", "s", "t", "e", "r", "y"]
  end

  it "stores a correct guess array on initialization" do
    expect(game.guess_arr).to eq ["_", "_", "_", "_", "_", "_", "_"]
  end

  it "sets max guesses equal to 1.5 times number of letters" do
    expect(game.max_guesses).to eq 10
  end

  it "processes guess letter when correct letter is guessed" do
    expect(game.is_correct_guess("y")).to eq true
  end

  it "finds correct indices when correct letter guessed" do
    expect(game.find_guess_index("y")).to eq [1, 6]
  end

  it "correctly updates guess array when correct letter guessed" do
    expect(game.update_guess_arr([1, 6], "y")).to eq ["_", "y", "_", "_", "_", "_", "y"]
  end



  # it "retrieves an item by index" do
  #   expect(list.get_item(0)).to eq "do the dishes"
  # end
end