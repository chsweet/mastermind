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

  it 'validates players guess' do
    code = CodeGenerator.new

    @player_input = "ygy"

    expect(code.player_guess_length).to eq("you are missing a letter")

    # didn't pass
     # @player_input = "sdghfdk"
    # expect(code.player_guess_length).to eq("you have too much")
  end

end
# expect(code.player_guess_color).to eq("incorrect colors")
