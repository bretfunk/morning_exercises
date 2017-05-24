class Taylor_swift

  words = []

file = File.open("./swift_stats/lyrics.txt", "r") do |file|
  file.each_line do |line|
    words << line.split(" ")
  end
end

output = words.flatten.join(" ").downcase.gsub!(/\W+/, ' ').split(" ").uniq.join(" ") #lol, I love functional programming
puts output
puts output.split.count

end
