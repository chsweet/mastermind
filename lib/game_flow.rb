require './lib/code_generator'
require './lib/comparison'

class GameFlow

  def initialize
    @compare = Comparison.new
    @code = CodeGenerator.new
    # @player_guess = @code.player_guess
    # @secret_code = @code.secret_code
    @game_guess_count = 0
  end

  def start_game
    p "Welcome to MASTERMIND!"
    p "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
    input = gets.chomp.downcase

    if input == "i" || input == "instructions"
      p "The objective of the game is to guess the exact positions of the colors in the computer's sequence"
      ## add while input = i ask p or q
    elsif input == "p" || input == "play"
      play_game
    elsif input == "q" || input == "quit"
      exit
    end
  end

  def play_game
    p "I have generated a beginner sequence with four elements made up of: (r)ed,(g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game."
    p "What's your guess?"
    @code.player_guess
    #
    # if @player_guess == 'q' || @player_guess == 'quit'
    #   exit
    # end

    while @code.player_guess != @code.secret_code
      p @compare.feedback
      @game_guess_count += 1
      @code.player_guess
    end

  end

  # while @player_guess != @secret_code
  #   p comparison.feedback
  #   game_guess_count += 1
  #   @code.player_guess
  #
  #
  # end



  def assess_guess?
    if @guess == @secret_code
      # @game.winner
    elsif @guess =! @secret_code
      # then it goes and does the thing in the comparison file
    end
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
