require 'rspec'
require './lib/code_generator'
require './lib/comparison'

RSpec.describe Comparison do

  it 'exists' do
    comparison = Comparison.new('ybbb', 'rrby', 0)

    expect(comparison).to be_an_instance_of(Comparison)
  end

  it 'asseses elements correct' do
    comparison = Comparison.new('ybbb', 'rrby', 0)

    expect(comparison.elements_correct).to eq (2)
  end

  it 'asseses elements in the correct position' do
    comparison = Comparison.new('ybbb', 'rrby', 0)

    expect(comparison.elements_position).to eq(1)
  end

  it 'gives feedback' do
    comparison = Comparison.new('ybbb', 'rrby', 0)

    comparison.elements_correct
    comparison.elements_position

    expect = "RRBY has 2 of the correct elements with 1 in the correct positions. You've taken 0 guess"

    expect(comparison.feedback).to eq(expect)
  end

end
