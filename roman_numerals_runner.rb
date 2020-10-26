require_relative "converter"

puts
puts "*************************"
puts
puts "Please enter a number"

input = $stdin.gets.chomp

converter = Converter.new input.to_i

puts "Input #{input} equals #{converter.output}"

puts "*************************"
puts
