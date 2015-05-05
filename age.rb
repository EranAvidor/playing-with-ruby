#1. ask for age
puts "Enter an age:"
age = gets.to_i


#2. process
if age < 10
  puts "It's a young person."
elsif age < 19
  puts "It's a teenager."
elsif age < 55
  puts "It's an adult."
elsif age < 100
  puts "It's an old person."
else
  puts "Is he dead?"
end


#3. output