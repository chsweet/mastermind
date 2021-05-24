class CodeGenerator

  # def initialize
  #   # @secret_code = []
  # end

  #Will need to change if beginner, intermidiate, advance
  def self.secret_code
    colors = ['r', 'g', 'b', 'y']
    @secret_code = Array.new(4) {colors.sample}.join
  end

end
