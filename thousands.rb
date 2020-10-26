require_relative "M"

class Thousands
  def self.get_output thousands
    get_roman_numerals thousands
  end

  private

    def self.get_roman_numerals thousands
      output = ""

      get_values(thousands).each do |k, numerals|
        numerals.each { |o| output += o.display }
      end

      output
    end

    def self.get_values key
      values =
      {
          0 => { "" => [] },
          1 => { "thousand" => [M.new] },
          2 => { "thousand" => [M.new, M.new] },
          3 => { "thousand" => [M.new, M.new, M.new] },
      }[key]
    end
end
