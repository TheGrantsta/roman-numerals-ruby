require_relative "converter"

input = ""

puts
puts "*************************"
puts

while @input != "X" do

  puts "Please enter a number, or 'X' to finish"

  @input = $stdin.gets.chomp

  if input != "X"
    converter = Converter.new @input.to_i

    puts "Input #{@input} equals #{converter.output}"
    puts
  end
end

puts "*************************"
puts
