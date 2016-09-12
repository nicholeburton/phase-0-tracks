require_relative 'word_game'

describe Word_Guess_Game do
  let(:game) { Word_Guess_Game.new("frank") }
  let(:game_dupe) { Word_Guess_Game.new("hello") }

  # check init vars

  it "stores word given in initialization" do
    expect(game.word).to eq "frank"
  end

  it "stores expanded word given in initialization" do
    expect(game.word_expanded).to eq "f r a n k"
  end

  it "stores word length in initialization" do
    expect(game.word_length).to eq 5
  end

  it "stores user readable string in initialization" do
    expect(game.guess_status).to eq "_ _ _ _ _"
  end

  it "stores squeezed word given in initialization" do
    expect(game_dupe.word).to eq "helo"
  end

  # test methods

  it "returns string comparisons as false " do
    expect(game.compare_to_word).to eq false
  end

  it "returns string comparisons as true" do
    game.guess_status = "f r a n k"
    expect(game.compare_to_word).to eq true
  end

  it "modifies word status to reveal wors" do
    expect(game.reveal_char("a")).to eq "_ _ a _ _"
  end
end
