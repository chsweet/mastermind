require './lib/intro'

RSpec.describe Intro do

  it "exists" do
    decision = Intro.new('p')

    expect(decision).to be_an_instance_of(Intro)
  end

end
