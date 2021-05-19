require './lib/game_flow'
require './lib/code_generator'

class Intro
  attr_reader :play

    def initialize
      @decision = []
    end

    def play
      p "I have generated a beginner sequence with four elements made up of: (r)ed, (g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game."
      p "What's your guess?"
      guess = gets.chomp()
    end

    def instructions
      p "The objective of the game is to guess the exact positions of the colors in the computer's sequence"
    end

    def quit(q)
      puts 'byeeeeeeee'
    end
end


  p "Welcome to MASTERMIND!"
  p "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"

  decision = gets.chomp

  game.play if decision == 'p'
  game.instructions if decision == 'i'
  game.quit if decision == 'q'


  class GameFlow
  attr_reader :decision


  def quit
  end

end
