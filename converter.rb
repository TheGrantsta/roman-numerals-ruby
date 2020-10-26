require_relative "Split"

class Converter
  attr_reader :output

  def initialize input
    @output = Split.new(input).get_output
  end
end
