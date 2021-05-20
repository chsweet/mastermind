class GameFlow

  def initialize
  end

  def player_guess
    p "I have generated a beginner sequence with four elements made up of: (r)ed,(g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game."
    p "What's your guess?"
    guess = gets.chomp.downcase
    #If guess.length > 4 "you have too much"
    #elsif guess.lenght < 4 "you are missing something"
    #elsif guess == 'q' || 'quit'
  end

  def comparison
    #does player_guess = code_generator
  end

end
