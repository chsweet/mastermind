require './lib/code_generator'

class Comparison

  def initialize
    @code = CodeGenerator.new
    @player_guess = @code.player_guess
    @secret_code = @code.secret_code
    @player_guess_split = @player_guess.chars
    @secret_code_split = @secret_code.chars
  end

  def elements_correct
    intersection = @player_guess_split & @secret_code_split

    if !intersection.empty?
      intersection.size
    else
    end

  end

  def elements_position
    pairs = @player_guess_split.zip(@secret_code_split)

    pairs.count { |guess,code| guess==code }
  end

  def feedback
      "#{@player_guess.upcase} has #{elements_correct} of the correct elements with #{elements_position} in the correct positions."
      # You've taken #{guess_count} guess"
  end

end

#if code != guess_again guess = gets.chomp.downcase

#need to create guess_count method
