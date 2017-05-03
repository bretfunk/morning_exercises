#cat to tac without reverse
word = "cat"
new_array = []
counter = 0


while word.length > counter
new_array.push(word.slice(-1))
counter += 1
end

puts new_array
