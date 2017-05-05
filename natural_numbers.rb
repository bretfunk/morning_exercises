
total_add = 0
total_square = 0

#adding numbers then squaring
for i in (1..100)
  total_add += i
end
total_add = total_add ** 2

#squaring numbers
(1..100).each {|x| total_square += (x**2)}

#final math
final_number = total_add - total_square

#printing numbers
puts "#{total_add} minus #{total_square} equals: #{final_number}"
