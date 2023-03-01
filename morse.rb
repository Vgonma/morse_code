MORSE = {
  'A' => '.-',
  'B' => '-...',
  'C' => '-.-.',
  'D' => '-..',
  'E' => '.',
  'F' => '..-.',
  'G' => '--.',
  'H' => '....',
  'I' => '..',
  'J' => '.---',
  'K' => '-.-',
  'L' => '.-..',
  'M' => '--',
  'N' => '-.',
  'O' => '---',
  'P' => '.--.',
  'Q' => '--.-',
  'R' => '.-.',
  'S' => '...',
  'T' => '-',
  'U' => '..-',
  'V' => '...-',
  'W' => '.--',
  'X' => '-..-',
  'Y' => '-.--',
  'Z' => '--..',
  '1' => '.----',
  '2' => '..---',
  '3' => '...--',
  '4' => '....-',
  '5' => '.....',
  '6' => '-....',
  '7' => '--...',
  '8' => '---..',
  '9' => '----.',
  '0' => '-----'
}.freeze

def return_char(char)
  return MORSE.key(char) if char

  ''
end

def decode_string(string)
  return '' if string.nil?

  decoded = ''
  str_split = string.split
  str_split.each { |char| decoded += return_char(char) }
  decoded
end

def decode_line(string)
  if string
    temp = ''
    str_split = string.split('   ')
    str_split.each do |word|
      temp += decode_string(word)
      temp += ' '
    end
    return temp
  end
  ''
end

# puts returnChar('....-')
# puts decodeString('-- -.--')
# puts decodeLine('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')

# puts morse["A"]
# Get value by key.
# puts morse.key('.-')
# Get key out of value.

puts 'Enter your message in Morse code:'

line = gets.chomp

puts decode_line(line)
