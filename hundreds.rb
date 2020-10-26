require_relative "C"
require_relative "D"
require_relative "M"

class Hundreds
  def self.get_output hundreds
    get_roman_numerals hundreds
  end

  private

    def self.get_roman_numerals hundreds
      output = ""

      get_values(hundreds).each do |k, numerals|
        numerals.each { |o| output += o.display }
      end

      output
    end

    def self.get_values key
      values =
      {
          0 => { "" => [] },
          1 => { "hundred" => [C.new] },
          2 => { "hundred" => [C.new, C.new] },
          3 => { "hundred" => [C.new, C.new, C.new] },
          4 => { "hundred" => [C.new], "five_hundred" => [D.new] },
          5 => { "five_hundred" => [D.new] },
          6 => { "five_hundred" => [D.new], "hundred" => [C.new] },
          7 => { "five_hundred" => [D.new], "hundred" => [C.new, C.new] },
          8 => { "five_hundred" => [D.new], "hundred" => [C.new, C.new, C.new] },
          9 => { "hundred" => [C.new], "thousand" => [M.new] }
      }[key]
    end
end
