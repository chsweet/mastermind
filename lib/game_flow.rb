class GameFlow
attr_reader :guess

  def initialize
    @guess = []
  end

  def start_game
    p "Welcome to MASTERMIND!"
    p "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
    input = gets.chomp.downcase

    if input == ("i" || "instructions")
      p "The objective of the game is to guess the exact positions of the colors in the computer's sequence"
      ## add while input = i ask p or q
    elsif input == ("p" || "play")
      player_guess
    elsif input == ("q" || "quit")
      p "byeeee"
    end
    ### need to go back and figure out ||
  end


  def player_guess
    p "I have generated a beginner sequence with four elements made up of: (r)ed,(g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game."
    p "What's your guess?"
    @guess = gets.chomp.downcase

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

  def assess_guess?
    if @guess == @secret_code
      # @game.winner
    elsif @guess =! @secret_code
      # then it goes and does the thing in the comparison file
    end
  end

  def input_criteria
    #If guess.length > 4 "you have too much"
    #elsif guess.length < 4 "you are missing something"
    #if input is anything other than rbgy, ie 1234, then do x

  end

  # guess attempt counter??  store the attmpts in an array
  # game timer

  def quit
  end
  #
  # def winner
  #   #if guess == true
  #   p congrats
  #   if first_guess == false
  #   #  p guess again? or quit?
  # end

end
