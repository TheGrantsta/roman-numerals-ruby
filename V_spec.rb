require_relative "V"

RSpec.describe V do
  it "should respond to #display" do
    v = V.new

    expect(v).to respond_to(:display)
  end

  it "should return 'V'" do
    v = V.new

    expect(v.display).to eq "V"
  end
end
