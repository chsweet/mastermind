require './lib/intro'

RSpec.describe Intro do

  it "exists" do
    decision = Intro.new("p")

    expect(decision).to be_an_instance_of(Intro)
  end

  #  it "reads instructions" do
  #   decision = Intro.new("p")
  #   decision_i = Intro.new("i")
  #   decision_q = Intro.new("q")
  #
  #   expect(decision).to be_an_instance_of(Intro)
  #   expect(intro.player_input).to eq(decision)
  # end

end
