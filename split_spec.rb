require_relative "split"

RSpec.describe Split do

  describe "split number to determine 'units' so" do
    it "should return 'units' from number when less than 10" do
      (0..9).each do |v|
        split = Split.new v

        expect(split.units).to eq(v), "expected #{v} but got #{split.units}"
      end
    end

    it "should return 'units' from number when is 10" do
      split = Split.new 10

      expect(split.units).to eq(0), "expected #{0} but got #{split.units}"
    end

    it "should return 'units' from number when more than 10" do
      (10..19).each do |v|
        split = Split.new v

        expect(split.units).to eq(v - 10), "expected #{v - 10} but got #{split.units}"
      end
    end

    it "should return 'units' from number when more than 100" do
      (110..119).each do |v|
        split = Split.new v

        expect(split.units).to eq(v - 110), "expected #{v - 110} but got #{split.units}"
      end
    end
  end

  describe "split number to determine 'tens' so" do
    it "should return 'tens' from number when 10 and less than 100" do
      (10..99).each do |v|
        split = Split.new v

        expected = v / 10

        expect(split.tens).to eq(expected), "expected #{expected} but got #{split.tens}"
      end
    end

    it "should return 'tens' from number when 200 and less than 300" do
      tens = [1, 2, 3, 4, 5, 6, 7, 8, 9]

      tens.each do |t|
        split = Split.new(200 + (t * 10))

        expected = t

        expect(split.tens).to eq(expected), "expected #{expected} but got #{split.tens}"
      end
    end
  end

  describe "split number to determine 'hundreds' so" do
    it "should return 'hundreds' from number when 100 and less than 1000" do
      (100..999).each do |v|
        split = Split.new v

        expected = v / 100

        expect(split.hundreds).to eq(expected), "expected #{expected} but got #{split.hundreds}"
      end
    end

    it "should return 'hundreds' from number when 1000 and less than 2000" do
      hu = [1, 2, 3, 4, 5, 6, 7, 8, 9]

      hu.each do |h|
        split = Split.new(1000 + (h * 100))

        expected = h

        expect(split.hundreds).to eq(expected), "expected #{expected} but got #{split.hundreds}"
      end
    end
  end

  describe "split number to determine 'thousands' so" do
    it "should return 'thousands' from number when 1000 and less than 4000" do
      th = [1, 2, 3, 4]

      th.each do |t|
        split = Split.new(t * 1000)

        expected = t

        expect(split.thousands).to eq(expected), "expected #{expected} but got #{split.thousands}"
      end
    end
  end
end
