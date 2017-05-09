class Spy
  attr_accessor :message, :morse
  def initialize(message)
    @message = message
    @morse = []
  end

def encode
message.chars.each do |letter|
  morse.push(
    case letter
    when "A"	then ".-"
    when "B"	then "-..."
    when "C"	then "-.-."
    when "D"	then "-.."
    when "E"	then "."
    when "F"	then "..-."
    when "G"	then "--."
    when "H"	then "...."
    when "I"	then ".."
    when "J"	then ".---"
    when "K"	then "-.-"
    when "L"	then ".-.."
    when "M"	then "--"
    when "N"	then "-."
    when "O"	then "---"
    when "P"	then ".--."
    when "Q"	then "--.-"
    when "R"	then ".-."
    when "S"	then "..."
    when "T"	then "-"
    when "U"	then "..-"
    when "V"	then "...-"
    when "W"	then ".--"
    when "X"	then "-..-"
    when "Y"	then "-.--"
    when "Z"	then "--.."
    end)
  end
  puts morse.join
end

end
puts "Enter message to encode"
message = gets.upcase.chomp
secret_message = Spy.new(message)
secret_message.encode
