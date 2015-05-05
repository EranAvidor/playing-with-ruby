#option 1
puts "Option1:"
number1 = 0
loop do
	break if number1 > 15
	puts "The number inside the loop is #{number1}"
	number1 += 1	
end

#option 2
puts "Option2:"
number2 = 0
until number2 > 15 do
	puts "The number inside the loop is #{number2}"
	number2 += 1	
end

#option 3
puts "Option3:"
number3 = 0
while number3 < 16 do
	puts "The number inside the loop is #{number3}"
	number3 += 1	
end

#option 4
puts "Option4:"
16.times do |number|
	puts "The number inside the loop is #{number}"
end

#option 5
puts "Option5"
list = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]
list.each do |number|
	puts "The number inside the loop is #{number}"
end

#option 6
puts "Option6"
(0..15).each do |number|
	puts "The number inside the loop is #{number}"
end

#option 7
puts "Option7"
(0...16).each do |number|
	puts "The number inside the loop is #{number}"
end

#option 8
puts "Option8"
for number in 0..15 do
	puts "The number inside the loop is #{number}"
end