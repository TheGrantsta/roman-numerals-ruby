require_relative "units"
require_relative "tens"
require_relative "hundreds"
require_relative "thousands"

class Split
  attr_reader :units, :tens, :hundreds, :thousands

  def initialize input
    @input = input

    divide_and_set_input
  end

  def get_output
    if @input < 1 || @input >= 4000
      output = "Please enter a number equal to or greater than 1 and less than 4000"
    else
      output = get_thousands_output
      output += get_hundreds_output
      output += get_tens_output
      output += get_unit_output
    end
  end

  private
    def divide_and_set_input
      set_units
      set_tens
      set_hundreds
      set_thousands
    end

    def set_units
      @units = @input % 10
    end

    def set_tens
      @tens = @input / 10 % 10
    end

    def set_hundreds
      @hundreds = @input / 100 % 10
    end

    def set_thousands
      @thousands = @input / 1000
    end

    def get_thousands_output
      Thousands.get_output @thousands
    end

    def get_hundreds_output
      Hundreds.get_output @hundreds
    end

    def get_tens_output
      Tens.get_output @tens
    end

    def get_unit_output
      Units.get_output @units
    end
end
