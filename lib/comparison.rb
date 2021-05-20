class Comparison

  def initialize
  end

  def assess_guess?
    if @guess == @secret_code
      # @game.winner
    elsif @guess =! @secret_code
      # player_guess.game_flow
    end
  end

  def element_correct
# is it missing any of the elements/colors
  end

  def element_position
    # is r in the correct position
  end

  def feedback
      "#{player_guess} has #{element_correct} of the correct elements with #{element_position} in the correct positions. You've taken #{guess_count} guess"

    #show correct and incorrect characters
  end

end

#if code != guess_again guess = gets.chomp.downcase

#need to create guess_count method
