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

end
