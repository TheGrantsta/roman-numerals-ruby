require_relative "I"
require_relative "V"
require_relative "X"

class Units
  def self.get_output units
    get_roman_numerals units
  end

  private
  
    def self.get_roman_numerals units
      output = ""

      get_values(units).each do |k, numerals|
        numerals.each { |o| output += o.display }
      end

      output
    end

    def self.get_values key
      values =
      {
          0 => { "" => []},
          1 => { "one" => [I.new]},
          2 => { "one" => [I.new, I.new]},
          3 => { "one" => [I.new, I.new, I.new]},
          4 => { "one" => [I.new], "five" => [V.new]},
          5 => { "five" => [V.new]},
          6 => { "five" => [V.new], "one" => [I.new] },
          7 => { "five" => [V.new], "one" => [I.new, I.new] },
          8 => { "five" => [V.new], "one" => [I.new, I.new, I.new] },
          9 => { "one" => [I.new], "ten" => [X.new] }
      }[key]
    end
end
