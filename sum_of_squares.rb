#redone

sum_total = 0
sum_of_squares = 0
square_of_sums = 0

(1..100).each do |x|
sum_total += x
end

(1..100).each do |x|
sum_of_squares += x * x
end

square_of_sums = sum_total * sum_total

puts square_of_sums - sum_of_squares
