require_relative "D"

RSpec.describe D do
  it "should respond to #display" do
    d = D.new

    expect(d).to respond_to(:display)
  end

  it "should return 'D'" do
    d = D.new

    expect(d.display).to eq "D"
  end
end
