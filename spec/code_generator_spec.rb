require 'rspec'
require './lib/code_generator'

RSpec.describe CodeGenerator do
  it 'exists' do
    code = CodeGenerator.new

    expect(code).to be_an_instance_of(CodeGenerator)
  end

  it 'generates a random secret code' do
    code = CodeGenerator.new
    secret_code_1 = code.secret_code
    secret_code_2 = code.secret_code

    expect(secret_code_1).to_not eq(secret_code_2)
    # expect(code.secret_code.count).to eq(4)
  end

  it 'validates players guess length' do
    code = CodeGenerator.new

    @player_input = "RRRGBY"

    expect(code.player_guess_length).to eq("you have too much")

    #doesn't pass
    # @player_input = "RRRGBY"
    #
    # expect(code.player_guess_length).to eq("you have too much")
  end

  it 'validates player cheat option' do
    code = CodeGenerator.new

    @player_input = 'c'
    @secret_code = "RGBY"

    expect(code.player_force_quit).to eq("RGBY")
  end
end
