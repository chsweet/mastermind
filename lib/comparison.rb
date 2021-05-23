require './lib/code_generator'

class Comparison


  def initialize
    @code = CodeGenerator.new
    @player_guess = @code.player_guess
    @secret_code = @code.secret_code
    @player_guess_split = @player_guess.chars
    @secret_code_split = @secret_code.chars
  end

 #player_guess = "RRYB"
 #secret_code = "GRBB"

  def elements_correct
    intersection = @player_guess_split & @secret_code_split

    if !intersection.empty?
      intersection.size
    else
    end

  end

  # def elements_position
  #   # is r in the correct position
  #   # iterate over the array but check at the index position
  # end

  def feedback
      "#{@player_guess.upcase} has #{elements_correct} of the correct elements with" #{element_position} in the correct positions. You've taken #{guess_count} guess"

    #show correct and incorrect characters
  end

end

#if code != guess_again guess = gets.chomp.downcase

#need to create guess_count method
