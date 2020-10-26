require_relative "C"

RSpec.describe C do
  it "should respond to #display" do
    c = C.new

    expect(c).to respond_to(:display)
  end

  it "should return 'C'" do
    c = C.new

    expect(c.display).to eq "C"
  end
end
