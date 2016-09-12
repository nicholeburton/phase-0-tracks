require_relative 'word_game'

describe Word_Guess_Game do
  let(:game) { Word_Guess_Game.new("frank") }
  let(:game_dupe) { Word_Guess_Game.new("hello") }

  it "stores word given in initialization" do
    expect(game.word).to eq "frank"
  end

  it "stores squeezed word given in initialization" do
    expect(game_dupe.word).to eq "helo"
  end

end
