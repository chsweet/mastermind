require './lib/code_generator'

class GameFlow

  def initialize
    @code = CodeGenerator.new
    @player_guess = []
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
      quit
    end
  end

  def play_game
    p "I have generated a beginner sequence with four elements made up of: (r)ed,(g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game."
    p "What's your guess?"
    @player_guess = gets.chomp.downcase
    @game_guess_count += 1

    while @player_guess != @code.secret_code
      p feedback
      @game_guess_count += 1
      @player_guess = gets.chomp.downcase
    end

  end

  def secret_code
    @code.secret_code
  end

  def elements_correct
    @player_guess_split = @player_guess.chars
    @secret_code_split = @code.secret_code.chars
    intersection = @player_guess_split & @secret_code_split

    if !intersection.empty?
      intersection.size
    else
    end

  end

  def elements_position
    @player_guess_split = @player_guess.chars
    @secret_code_split = @code.secret_code.chars

    pairs = @player_guess_split.zip(@secret_code_split)

    pairs.count { |guess,code| guess==code }
  end

  def feedback
      "#{@player_guess.upcase} has #{elements_correct} of the correct elements with #{elements_position} in the correct positions. You've taken #{@game_guess_count} guess"
  end


  def valid?
    if @player_guess == 'c' || @player_guess == 'cheat'
      p @secret_code
    elsif @player_guess == 'q' || @player_guess == 'quit'
      quit
    elsif @player_guess.length > 4
      p "you have too many"
    elsif @player_guess.length < 4
      p "you are missing a letter"
    end
  end


  # guess attempt counter??  store the attmpts in an array
  # game timer

  def quit
    p "Thank you for playing!"
    exit
  end
  #
  # def winner
  #   #if guess == true
  #   p congrats
  #   if first_guess == false
  #   #  p guess again? or quit?
  # end

end
