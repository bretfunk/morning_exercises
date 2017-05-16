current_year = 2017
next_twenty = []

while next_twenty.length < 20
  if current_year % 4 == 0
    if current_year % 400 == 0
      if current_year % 100 != 0
        next_twenty.push(current_year)
        current_year += 1
      else
        current_year += 1
      end
  else
    current_year += 1
  end
end
current_year += 1
end
puts next_twenty
