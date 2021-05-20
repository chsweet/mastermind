require './lib/code_generator'
require './lib/game_flow'
require './lib/intro'
require './lib/mastermind'

RSpec.describe CodeGenerator do
  it 'exists' do
    code = CodeGenerator.new

    expect(code).to be_an_instance_of(CodeGenerator)
  end

  it 'stores a secret code array' do
    code = CodeGenerator.new

    expect(code.secret_code).to eq([])
  end


end
