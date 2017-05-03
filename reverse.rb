#cat to tac without reverse
word = "cat"
new_array = []
index = -1
counter = 0

while word.length > counter
new_array.push(word[index])
counter += 1
index += -1
end

puts new_array.join
