class Comparison
attr_accessor :guess_count, :player_guess

  def initialize(secret_code, player_guess=nil, guess_count=nil)
    @player_guess = player_guess
    @guess_count = guess_count
    @code_split = secret_code.chars
  end

  def elements_correct
    intersection = player_guess_split & @code_split
    intersection.empty? ? 0: intersection.size
  end

  def elements_position
    pairs = player_guess_split.zip(@code_split)

    pairs.count { |guess,code| guess==code }
  end

  def feedback
      "#{player_guess.upcase} has #{elements_correct} of the correct elements with #{elements_position} in the correct positions. You've taken #{@guess_count} guess"
  end

  private
  #can't be called outside this class; test everything above
  def player_guess_split
    @player_guess.chars
  end
end
