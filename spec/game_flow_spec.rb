require './lib/game_flow'

RSpec.describe GameFlow do
    before :each do
      @game = GameFlow.new
    end

  it 'exists' do
    expect(@game).to be_an_instance_of(GameFlow)
  end

  it 'start game player input is instructions' do
    allow(@game).to receive(:gets).and_return("I\n")
    allow(@game).to receive(:instructions).and_return("instructions")

    expect(@game.start_game).to eq("instructions")
  end

  it 'start game player input is play' do
    allow(@game).to receive(:gets).and_return("P\n")
    allow(@game).to receive(:play_game).and_return("Play game")

    expect(@game.start_game).to eq("Play game")
  end

  it 'start game player input is quit' do
    allow(@game).to receive(:gets).and_return("Q\n")
    allow(@game).to receive(:quit).and_return("Byeeee")

    expect(@game.start_game).to eq("Byeeee")
  end

  it 'reads instructions player input is play' do
    allow(@game).to receive(:gets).and_return("P\n")
    allow(@game).to receive(:play_game).and_return("Play game")

    expect(@game.instructions).to eq("Play game")
  end

  it 'reads instructions player input is quit' do
    allow(@game).to receive(:gets).and_return("Q\n")
    allow(@game).to receive(:quit).and_return("Byeeee")

    expect(@game.instructions).to eq("Byeeee")
  end

  # it 'allows the player to win' do
  #   @code = CodeGenerator.new
  #
  #   allow(CodeGenerator).to receive(:secret_code).and_return("rrgb")
  #
  #   allow(@game).to receive(:gets).and_return("RRGB\n")
  #   allow(@game).to receive(:winner).and_return('Congrats!')
  #
  #   expect(@game.play_game).to eq('Congrats!')
  # end

  xit 'validates player guess' do
  end

  it 'calculates time' do
    allow(@game).to receive(:Time.now).and_return('74\n')
    expect(@game.game_timer).to eq(74)
  end

  it 'prints quit response' do
    expect(@game.quit).to eq("Thank you for playing!")
  end
end
