require_relative "converter"

#Largest roman numeral - MMMCMXCIX, or 3,999

RSpec.describe Foo do
  describe "single digits - 1 to 9" do
    it "should show the right output" do
      tests = {
          0 => "",
          1 => "I",
          2 => "II",
          3 => "III",
          4 => "IV",
          5 => "V",
          6 => "VI",
          7 => "VII",
          8 => "VIII",
          9 => "IX"
        }

      tests.each do |k, v|
        foo = Foo.new k

        expect(foo.output).to eq(v), "expected #{v} but got #{foo.output}"
      end
    end
  end

  describe "two digits - 10 to 19" do
    it "should show the right output" do
      tests = {
          10 => "X",
          11 => "XI",
          12 => "XII",
          13 => "XIII",
          14 => "XIV",
          15 => "XV",
          16 => "XVI",
          17 => "XVII",
          18 => "XVIII",
          19 => "XIX"
        }

      tests.each do |k, v|
        foo = Foo.new k

        expect(foo.output).to eq(v), "expected #{v} but got #{foo.output}"
      end
    end
  end

  describe "two digits - 90 to 99" do
    it "should show the right output" do
      tests = {
          90 => "XC",
          91 => "XCI",
          92 => "XCII",
          93 => "XCIII",
          94 => "XCIV",
          95 => "XCV",
          96 => "XCVI",
          97 => "XCVII",
          98 => "XCVIII",
          99 => "XCIX"
        }

      tests.each do |k, v|
        foo = Foo.new k

        expect(foo.output).to eq(v), "expected #{v} but got #{foo.output}"
      end
    end
  end

  describe "three digits" do
    it "should show the right output - 100 to 109" do
      tests = {
          100 => "C",
          101 => "CI",
          102 => "CII",
          103 => "CIII",
          104 => "CIV",
          105 => "CV",
          106 => "CVI",
          107 => "CVII",
          108 => "CVIII",
          109 => "CIX"
        }

      tests.each do |k, v|
        foo = Foo.new k

        actual = foo.output

        expect(actual).to eq(v), "expected #{v} but got #{actual}"
      end
    end

    it "should show the right output - 150 to 159" do
      tests = {
          150 => "CL",
          151 => "CLI",
          152 => "CLII",
          153 => "CLIII",
          154 => "CLIV",
          155 => "CLV",
          156 => "CLVI",
          157 => "CLVII",
          158 => "CLVIII",
          159 => "CLIX"
        }

      tests.each do |k, v|
        foo = Foo.new k

        actual = foo.output

        expect(actual).to eq(v), "expected #{v} but got #{actual}"
      end
    end

    it "should show the right output - 2170 to 2179" do
      tests = {
          2170 => "MMCLXX",
          2171 => "MMCLXXI",
          2172 => "MMCLXXII",
          2173 => "MMCLXXIII",
          2174 => "MMCLXXIV",
          2175 => "MMCLXXV",
          2176 => "MMCLXXVI",
          2177 => "MMCLXXVII",
          2178 => "MMCLXXVIII",
          2179 => "MMCLXXIX"
        }

      tests.each do |k, v|
        foo = Foo.new k

        actual = foo.output

        expect(actual).to eq(v), "expected #{v} but got #{actual}"
      end
    end
  end
end
