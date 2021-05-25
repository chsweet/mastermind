class GameFlow

  def start_game
    p "Welcome to MASTERMIND!"
    p "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
    input = gets.chomp.downcase

    if input == "i" || input == "instructions"
      instructions
    elsif input == "p" || input == "play"
      play_game
    elsif input == "q" || input == "quit"
      quit
    end
  end

  def instructions
    p "Mastermind is a puzzle game where the objective is to guess a computer generated code with the exact position of four colors (r)ed, (g)reen, (b)lue, and (y)ellow."
    p "Would you like to (p)lay or (q)uit?"
    input = gets.chomp.downcase
    if input == "p" || input == "play"
      play_game
    elsif input == "q" || input == "quit"
      quit
    end
  end

  def play_game
    @code = CodeGenerator.secret_code
    @player_guess = nil
    @guess_count = 0
    @comparison = Comparison.new(@code, nil, nil)

    @start_time = Time.now
    p "I have generated a beginner sequence with four elements made up of: (r)ed, (g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game or (c)heat to see the answer."
    p "What's your guess?"
    player_input

    while @player_guess != @code
      p @comparison.feedback
      player_input
    end
      @end_time = Time.now
      winner
  end

  def player_input
    @player_guess = gets.chomp.downcase
    alternate_player_input
    @guess_count += 1
    @comparison.player_guess = @player_guess
    @comparison.guess_count = @guess_count
  end

  def alternate_player_input
    if @player_guess == 'c' || @player_guess == 'cheat'
      p @code
      p "Better luck next time!"
      exit
    elsif @player_guess == 'q' || @player_guess == 'quit'
      quit
    elsif @player_guess.length > 4
      p "You have too many letters, guess again!"
      player_input
    elsif @player_guess.length < 4
      p "You are missing a letter, guess again!"
      player_input
    end
  end

  def game_timer
    final_time = (@end_time - @start_time).to_i
    @minutes = final_time / 60
    @seconds = final_time % 60
  end

  def quit
    p "Thank you for playing!"
    exit
  end

  def winner
    game_timer
    p "Congratulations! You guessed the sequence #{@code.upcase} in #{@guess_count} guesses over #{@minutes} minutes, #{@seconds} seconds."
    p "Do you want to (p)lay again or (quit)?"

    input = gets.chomp.downcase

    if input == "p" || input == "play"
      play_game
    elsif input == "q" || input == "quit"
      quit
    end
  end

end
