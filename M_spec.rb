require_relative "M"

RSpec.describe M do
  it "should respond to #display" do
    m = M.new

    expect(m).to respond_to(:display)
  end

  it "should return 'M'" do
    m = M.new

    expect(m.display).to eq "M"
  end
end
