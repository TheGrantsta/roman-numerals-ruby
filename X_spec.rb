require_relative "X"

RSpec.describe X do
  it "should respond to #display" do
    x = X.new

    expect(x).to respond_to(:display)
  end

  it "should return 'X'" do
    x = X.new

    expect(x.display).to eq "X"
  end
end
