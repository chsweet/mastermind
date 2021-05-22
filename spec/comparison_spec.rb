require 'rspec'
require './lib/code_generator'
require './lib/comparison'

RSpec.describe Comparison do

  it 'exists' do
    compare = Comparison.new

    expect(compare).to be_an_instance_of(Comparison)
  end


  it 'can assess a guess' do
    compare = Comparison.new
    code = CodeGenerator.new

    expect(asses_guess?).to eq true
  end
end
