require 'colorize'

def add a, b
  a+b
end

puts 'Enter first number'.blue
input1 = gets
puts 'Enter second number'.blue
input2 = gets

puts "The result is:".green
puts "#{add input1.to_i, input2.to_i}".green

# DB credentials
# root / root