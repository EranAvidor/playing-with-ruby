def add_and_power a, b
  (a + b) ** (a + b)
end

puts 'Enter first number'
input1 = gets
puts 'Enter second number'
input2 = gets

puts "The result is:"
puts "#{add_and_power input1.to_i, input2.to_i}"