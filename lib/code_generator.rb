class CodeGenerator

  def initialize
    # @secret_code = []
    # @player_input = []
  end

  #Will need to change if beginner, intermidiate, advance
  def secret_code
    colors = ['r', 'g', 'b', 'y']
    @secret_code = Array.new(4) {colors.sample}.join
  end

  def player_guess
    @player_guess = gets.chomp.downcase

    #I think it may be better to call on the methods in the game flow
    # player_force_quit
    # player_guess_length
  end

  def player_guess_length

    if @player_guess.length > 4
      p "you have too many"
    elsif @player_guess.length < 4
      p "you are missing a letter"
    end
  end

  def player_force_quit
    if @player_guess == 'c' || @player_guess == 'cheat'
      p @secret_code
    elsif @player_guess == 'q' || @player_guess == 'quit'
    end
  end

end
