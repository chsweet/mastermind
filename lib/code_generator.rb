class CodeGenerator

attr_reader :secret_code

  def initialize
    @secret_code = []
  end

  def generator
    colors = ['r', 'g', 'b', 'y']
    @secret_code.new{colors.sample}.join
end
    @secret_code << generator
  end

end
# [(r)ed, (g)reen, (b)lue, and (y)ellow]
