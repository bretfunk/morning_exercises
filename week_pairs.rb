#workers = ["Alex", "Bermadete", "Charles", "Dana", "Eddie", "Fernando", "Gus", "Hiro"]
workers = ["A", "B", "C", "D", "E", "F", "G", "H"]

create_pairs = []
workers.each do |person1|
  create_pairs << person1
  workers.each {|person2| create_pairs << person2 unless person2 == person1}
end

create_schedule = []
create_pairs = create_pairs.join
until create_pairs.length == 0
  create_schedule << create_pairs.slice!(0..1)
end

remove_duplicates = []
create_schedule.each do |pair1|
  create_schedule.each {|pair2| remove_duplicates << pair1 unless pair2 unless pair1 == pair2[1][0]}
end

puts remove_duplicates.uniq
