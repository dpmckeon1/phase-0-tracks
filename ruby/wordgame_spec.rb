require_relative 'wordgame'

describe WordGame do
  let(:guess) { WordGame.new("mystery") }

  it "stores a correct array on initialization" do
    expect(guess.mystery_word_arr).to eq ["m", "y", "s", "t", "e", "r", "y"]
  end

  it "sets max guesses equal to 1.5 times number of letters (no spaces or doubles)" do
    expect(guess.max_guesses).to eq 9
  end

  # it "deletes an item" do
  #   list.delete_item("do the dishes")
  #   expect(list.get_items).to eq ["mow the lawn"]
  # end

  # it "retrieves an item by index" do
  #   expect(list.get_item(0)).to eq "do the dishes"
  end
end