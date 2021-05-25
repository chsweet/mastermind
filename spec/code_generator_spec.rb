require 'rspec'
require './lib/code_generator'

RSpec.describe CodeGenerator do
  it 'generates a random secret code' do

    expect(CodeGenerator.secret_code.length).to eq(4)
  end
end
