require './lib/intro'
require './lib/game_flow'

RSpec.describe GameFlow do

  it 'exists' do
    game = GameFlow.new

    expect(game).to be_an_instance_of(GameFlow)
  end

end
