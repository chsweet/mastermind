class Intro

  p "Welcome to MASTERMIND!"
  p "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"

  decision = gets.chomp

  # intro.play if decision == 'p'
  # intro.instructions if decision == 'i'
  # intro.quit if decision == 'q'

  # if decision = 'p'

  # attr_reader :play

    def initialize(decision)
      @decision = []
    end

    # def player_input(decision)
    #   if decision = "i"
    #     p "The objective of the game is to guess the exact positions of the colors in the computer's sequence"
    #   elsif decision = "p"
    #     p "I have generated a beginner sequence with four elements made up of: (r)ed, (g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game."
    #     p "What's your guess?"
    #        # guess = gets.chomp()
    #    elsif decision = "q"
    #      puts 'byeeeeeeee'
    #   end
    end

#     def play ## Game Flow Class
#       p "I have generated a beginner sequence with four elements made up of: (r)ed, (g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game."
#       p "What's your guess?"
#       # guess = gets.chomp()
#     end
#
#     def instructions #print instructions
#       p "The objective of the game is to guess the exact positions of the colors in the computer's sequence"
#     end
#
#     def quit(q) #stop game
#       puts 'byeeeeeeee'
#     end
# end
