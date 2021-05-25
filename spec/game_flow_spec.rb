require './lib/game_flow'

RSpec.describe GameFlow do

  it 'exists' do
    game = GameFlow.new

    expect(game).to be_an_instance_of(GameFlow)
  end

  it 'prints instructions' do
    game = GameFlow.new
    allow(game).to receive(:gets).and_return("I\n")
    expect(game.start_game).to eq("The objective of the game is to guess the exact positions of the colors in the computer's sequence")
  end

  it 'plays game' do
    allow(CodeGenerator).to receive(:secret_code).and_return("rrgb")

    game = GameFlow.new
    allow(game).to receive(:gets).and_return("RRGB\n")
    expect(game.play_game).to eq('Congrats!')
  end

  xit 'validates player guess' do

  end

  xit 'prints quit response' do

  end

  xit 'prints winner response' do
  end
  
end
