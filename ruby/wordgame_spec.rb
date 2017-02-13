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
    expect(game.is_correct_guess?("m")).to eq true
  end

  it "does not process guess letter when incorrect letter is guessed" do
    expect(game.is_correct_guess?("z")).to eq false
  end

  it "does not process guess letter when repeated letter is guessed" do
    game.update_guess_arr([0], "m")
    expect(game.is_correct_guess?("m")).to eq false
  end  

  it "finds correct indices when correct letter guessed" do
    expect(game.find_guess_index("y")).to eq [1, 6]
  end

  it "correctly updates guess array when correct letter guessed" do
    expect(game.update_guess_arr([1, 6], "y")).to eq ["_", "y", "_", "_", "_", "_", "y"]
  end

  it "generates lose result when player has lost" do
    game.num_guesses = 9
    game.update_guesses_and_result
    game.guess_arr = ["_", "y", "_", "_", "_", "_", "y"]
    expect(game.result).to eq "lose"
  end

  it "generates win result when player has won" do
    game.num_guesses = 9
    game.guess_arr = ["m", "y", "s", "t", "e", "r", "y"]
    game.update_guesses_and_result
    expect(game.result).to eq "win"
  end

  it "ensures repeat guesses are not counted against max_guesses limit" do
  	game.num_guesses = 4
  	game.update_guess_arr([0], "m")
  	game.is_correct_guess?("m")
  	game.update_guesses_and_result
    expect(game.num_guesses).to eq 4
  end

end