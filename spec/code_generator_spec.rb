require 'rspec'
require './lib/code_generator'

RSpec.describe CodeGenerator do
  # it 'exists' do
  #   code = CodeGenerator.new
  #   expect(code).to be_an_instance_of(CodeGenerator)
  # end

  it 'generates a random secret code' do

    expect(CodeGenerator.secret_code.length).to eq(4)
  end
end
