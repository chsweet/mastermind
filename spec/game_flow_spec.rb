require './lib/intro'
require './lib/game_flow'

RSpec.describe GameFlow do

  it 'exists' do
    game = GameFlow.new

    expect(game).to be_an_instance_of(GameFlow)
  end

  it 'prints instructions' do
    game = GameFlow.new

    expect(game.start_game).to eq("The objective of the game is to guess the exact positions of the colors in the computer's sequence")
  end
end
