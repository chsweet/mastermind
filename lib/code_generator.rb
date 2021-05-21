class CodeGenerator
  def initialize
    ##add a number instance variable to pull in the correct number depending on the difficulty levels
  end

  #Will need to change if beginner, intermidiate, advance
  def secret_code
    colors = ['r', 'g', 'b', 'y']
    Array.new(4) {colors.sample}.join
  end

# ** STOP loop if you meet the criteria
  def player_guess
    p "I have generated a beginner sequence with four elements made up of: (r)ed,(g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game."
    p "What's your guess?"
    @player_input = gets.chomp.downcase
    p @player_input
    player_guess_length
    player_guess_color
    player_force_quit
  end

  def player_guess_length
    if @player_input.to_s.length > 4
      p "you have too much"
    elsif @player_input.to_s.length < 4
      p "you are missing a letter"
    end
  end

  def player_force_quit
    if @player_input == ('q' || 'quit')
      p "game over"
    elsif @player_input ==('c' || 'cheat')
      p secret_code
    end
  end

  def player_guess_color
    #enumbral itirating over the array cecking for the r b g y ("r" || "y"..)
    if @player_input.include? "r"
    elsif
      p "incorrect colors"
      player_guess
    end
  end

# guess attempt counter??  store the attmpts in an array
# game timer

end
