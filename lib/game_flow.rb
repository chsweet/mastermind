class GameFlow

  def initialize
    @code = CodeGenerator.secret_code
    @player_guess = nil
    @guess_count = 0
    @comparison = Comparison.new(@code, nil, nil)
  end

  def start_game
    p "Welcome to MASTERMIND!"
    p "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
    input = gets.chomp.downcase

    if input == "i" || input == "instructions"
      p "The objective of the game is to guess the exact positions of the colors in the computer's sequence"
      ### more instruction
      p "Would you like to (p)lay or (quit)?"
      input = gets.chomp.downcase
      if input == "p" || input == "play"
        play_game
      elsif input == "q" || input == "quit"
        quit
      end
    elsif input == "p" || input == "play"
      play_game
    elsif input == "q" || input == "quit"
      quit
    end
  end

  def play_game
    p "I have generated a beginner sequence with four elements made up of: (r)ed, (g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game or (c)heat to see the answer."
    p "What's your guess?"
    player_input
    # @guess_count += 1
    # @player_guess = gets.chomp.downcase
    # valid?
    # @comparison.player_guess = @player_guess
    # @comparison.guess_count = @guess_count

    while @player_guess != @code
      p @comparison.feedback
      player_input
      # @guess_count += 1
      # @player_guess = gets.chomp.downcase
      # valid?
      # @comparison.player_guess = @player_guess
      # @comparison.guess_count = @guess_count
    end
      winner
  end

  def valid?
    if @player_guess == 'c' || @player_guess == 'cheat'
      p @code
      p "Better luck next time!"
      exit
    elsif @player_guess == 'q' || @player_guess == 'quit'
      quit
    elsif @player_guess.length > 4
      p "You have too many letters, guess again!"
      @player_guess = gets.chomp.downcase
    elsif @player_guess.length < 4
      p "You are missing a letter, guess again!"
      @player_guess = gets.chomp.downcase
    end
  end

  def player_input
    @guess_count += 1
    @player_guess = gets.chomp.downcase
    valid?
    @comparison.player_guess = @player_guess
    @comparison.guess_count = @guess_count
  end

  def quit
    p "Thank you for playing!"
    exit
  end

  # def game_timer
  # end

  def winner
    p "Congratulations! You guessed the sequence #{@code} in NEED TIMER"
    p "Do you want to (p)lay again or (quit)?"
    input = gets.chomp.downcase

    if input == "p" || input == "play"
      play_game
    elsif input == "q" || input == "quit"
      quit
    end
  end

end
