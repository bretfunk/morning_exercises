#mild
mild_team = ["a", "b", "c", "d", "e", "f", "g", "h"]
first_sort = mild_team.combination(2).to_a
second_sort = []
first_sort.map do |team|
  if second_sort.flatten.include?(team[0]) || second_sort.flatten.include?(team[1])
    next
  else
    second_sort << team
    first_sort.delete(team)
  end
end
until first_sort.length == 0
end

#medium
# medium_team = [["a", "b", "c", "d", "e", "f", "g", "h"], ["i", "j", "k", "l", "m", "n", "o", "p"]]
# medium_schedule = []
# medium_schedule << medium_team[0].combination(2).to_a
# medium_schedule << medium_team[1].combination(2).to_a
# p medium_schedule


#hot
