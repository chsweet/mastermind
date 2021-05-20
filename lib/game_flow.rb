class GameFlow

  def initialize
  end

  def player_guess
    p "I have generated a beginner sequence with four elements made up of: (r)ed,(g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game."
    p "What's your guess?"
    guess = gets.chomp.downcase
    #If guess.length > 4 "you have too much"
    #elsif guess.length < 4 "you are missing something"
    #elsif guess == 'q' || 'quit'
    #elsif guess == 'c' || 'cheat' will pull generated code
    #if code != code generated then give feedback ex: ''RRGB' has 3 of the
    # correct elements with 2 in the correct positions
    # You've taken 1 guess'
    #if code != guess_again
    #if guess == generated code then end game
  end

  def comparison
    #does player_guess = code_generator
  end

  def quit
  end

  def cheat
    # p code_generator
    #options - play again? or quit?

  end

  def feedback
    #show correct and incorrect characters
    #ex: ''RRGB' has 3 of the
    # correct elements with 2 in the correct positions
    # You've taken 1 guess'
    #if code != guess_again guess = gets.chomp.downcase
  end

  def input_criteria
    #If guess.length > 4 "you have too much"
    #elsif guess.length < 4 "you are missing something"
    #if input is anything other than rbgy, ie 1234, then do x
  end

  def end_game
    #congrats!
    #options - play again? or quit?
  end

end
