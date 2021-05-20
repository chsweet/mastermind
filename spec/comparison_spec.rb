require './lib/game_flow'
require './lib/code_generator'
require './lib/comparison'

RSpec.describe Comparison do

  it 'exists' do
    compare = Comparison.new

    expect(compare).to be_an_instance_of(Comparison)
  end


  it 'can assess a guess' do
    compare = Comparison.new
    game = GameFlow.new
    code = CodeGenerator.new
    game.guess = ['rygy']
    code.secret_code = ['rygy']

    expect(asses_guess?).to eq true
  end
end
