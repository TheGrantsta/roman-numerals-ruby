require_relative "X"
require_relative "L"
require_relative "C"

class Tens
  def self.get_output tens
    if tens < 10
      return get_roman_numerals tens
    end
  end

  private
  
    def self.get_roman_numerals tens
      output = ""

      get_values(tens).each do |k, numerals|
        numerals.each { |o| output += o.display }
      end

      output
    end

    def self.get_values key
      values =
      {
          0 => { "" => []},
          1 => { "ten" => [X.new]},
          2 => { "ten" => [X.new, X.new]},
          3 => { "ten" => [X.new, X.new, X.new]},
          4 => { "ten" => [X.new], "fifty" => [L.new]},
          5 => { "fifty" => [L.new]},
          6 => { "fifty" => [L.new], "ten" => [X.new] },
          7 => { "fifty" => [L.new], "ten" => [X.new, X.new] },
          8 => { "fifty" => [L.new], "ten" => [X.new, X.new, X.new] },
          9 => { "ten" => [X.new], "hundred" => [C.new] }
      }[key]
    end
end
