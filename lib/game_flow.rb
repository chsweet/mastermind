require './lib/code_generator'

class GameFlow

  def initialize
    @code = CodeGenerator.secret_code
    @player_guess = nil
    @game_guess_count = 0
    @comparison = Comparison.new(@code, nil, nil)
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

    valid?
    @game_guess_count += 1
    @comparison.player_guess = @player_guess
    @comparison.game_guess_count = @game_guess_count

    while @player_guess != @code
      p @comparison.feedback
      @game_guess_count += 1
      @player_guess = gets.chomp.downcase

      valid?
      @comparison.player_guess = @player_guess
      @comparison.game_guess_count = @game_guess_count
    end
    p 'Congrats!'
  end

  def valid?
    if @player_guess == 'c' || @player_guess == 'cheat'
      p @code
    elsif @player_guess == 'q' || @player_guess == 'quit'
      quit
    elsif @player_guess.length > 4
      p "you have too many, guess again"
      @player_guess = gets.chomp.downcase
    elsif @player_guess.length < 4
      p "you are missing a letter"
      @player_guess = gets.chomp.downcase
    end
  end

  def quit
    p "Thank you for playing!"
    exit
  end

end
