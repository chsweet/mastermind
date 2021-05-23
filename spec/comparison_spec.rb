require 'rspec'
require './lib/code_generator'
require './lib/comparison'

RSpec.describe Comparison do

  it 'exists' do
    compare = Comparison.new

    expect(compare).to be_an_instance_of(Comparison)
  end


  it 'asseses elements correct' do
    compare = Comparison.new
    code = CodeGenerator.new

    @player_guess = "rrby"
    @secret_code = "ybbb"
    @player_guess_split = @player_guess.chars
    @secret_code_split = @secret_code.chars


    expect(compare.elements_correct).to eq (2)
  end

  
end
