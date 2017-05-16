puts "Type message to code:"
message = gets.chomp
message = message.downcase.chars
secure_message = []

morse = { 'a' => '.-',
          'b' => '-...',
          'c' => '-.-.',
          'd' =>'-..',
          'e' => '.',
          'f' => '..-.',
          'g' => '--.',
          'h' => '....',
          'i' => '..',
          'j' => '.---',
          'k' => '-.-',
          'l' => '.-..',
          'm' => '--',
          'n' => '-.',
          'o' => '---',
          'p' => '.--.',
          'q' => '--.-',
          'r' => '.-.',
          's' => '...',
          't' => '-',
          'u' => '..-',
          'v' => '...-',
          'w' => '.--',
          'x' => '-..-',
          'y' => '-.--',
          'z' => '--..'}

message.each {|x| secure_message.push(morse[x])}
p secure_message.join
