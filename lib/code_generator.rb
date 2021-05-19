class CodeGenerator

attr_reader :secret_code

  def initialize
    @secret_code = []
  end

  def secret_code
    characters.sample(4)
  end

end
