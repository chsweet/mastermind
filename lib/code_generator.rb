class CodeGenerator

# attr_reader :secret_code

  def initialize
    ##add a number instance variable to pull in the correct number depending on the difficulty levels
  end

#How do we have number pre-set to 4??
  def secret_code
    colors = ['r', 'g', 'b', 'y']
    Array.new(4) {colors.sample}.join

  end


end
