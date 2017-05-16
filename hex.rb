#split and figure out which one is the biggest
test = "F6336A"

R = test[0..1].hex
G = test[2..3].hex
B = test[4..5].hex

puts "Red is #{R}"
puts "Green is #{G}"
puts "Blue is #{B}"

biggest = [R, G, B].sort.reverse.first

case biggest
  when R then answer = "Red"
  when G then answer = "Green"
  when B then answer = "Blue"
end

puts "#{answer} is the dominant color"
