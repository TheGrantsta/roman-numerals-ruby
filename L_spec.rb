require_relative "L"

RSpec.describe L do
  it "should respond to #display" do
    l = L.new

    expect(l).to respond_to(:display)
  end

  it "should return 'L'" do
    l = L.new

    expect(l.display).to eq "L"
  end
end
