class CodeGenerator

attr_reader :secret_code

  def initialize
    @secret_code = []
    ##add a number instance variable to pull in the correct number depending on the difficulty levels
  end

#How do we have number pre-set to 4??
  def generator_beginner(number)
    colors = ['r', 'g', 'b', 'y']
    # number = 4
    Array.new(number) {colors.sample}.join

    @secret_code << generator_beginner
  end

end
# [(r)ed, (g)reen, (b)lue, and (y)ellow]
