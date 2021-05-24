class CodeGenerator

  def initialize
    @secret_code = []
    @player_input = []
  end

  #Will need to change if beginner, intermidiate, advance
  def secret_code
    colors = ['r', 'g', 'b', 'y']
    @secret_code = Array.new(4) {colors.sample}.join
  end

  def player_guess
    # p "I have generated a beginner sequence with four elements made up of: (r)ed,(g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game."
    # p "What's your guess?"
    @player_input = gets.chomp.downcase

    #I think it may be better to call on the methods in the game flow
    # player_force_quit
    # player_guess_length
  end

  def player_guess_length

    if @player_input.length > 4
      p "you have too many"
    elsif @player_input.length < 4
      p "you are missing a letter"
    end
  end

  def player_force_quit
    if @player_input == 'c' || @player_input == 'cheat'
      p @secret_code
    elsif @player_input == 'q' || @player_input == 'quit'
    end
  end

end
