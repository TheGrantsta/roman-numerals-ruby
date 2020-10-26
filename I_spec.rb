require_relative "I"

RSpec.describe I do
  it "should respond to #display" do
    i = I.new

    expect(i).to respond_to(:display)
  end

  it "should return 'I'" do
    i = I.new

    expect(i.display).to eq "I"
  end
end
