$morse = {
  'A'=> '.-',
  'B'=> '-...',
  'C'=> '-.-.',
  'D'=> '-..',
  'E'=> '.',
  'F'=> '..-.',
  'G'=> '--.',
  'H'=> '....',
  'I'=> '..',
  'J'=> '.---',
  'K'=> '-.-',
  'L'=> '.-..',
  'M'=> '--',
  'N'=> '-.',
  'O'=> '---',
  'P'=>'.--.',
  'Q'=>'--.-',
  'R'=>'.-.',
  'S'=>'...',
  'T'=>'-',
  'U'=> '..-',
  'V'=>'...-',
  'W'=> '.--',
  'X'=> '-..-',
  'Y'=> '-.--',
  'Z'=>'--..',
  '1'=> '.----',
  '2'=> '..---',
  '3'=> '...--',
  '4'=> '....-',
  '5'=> '.....',
  '6'=> '-....',
  '7'=> '--...',
  '8'=> '---..',
  '9'=> '----.',
  '0'=> '-----'
}

def returnChar (char)
  if(char)
    return $morse.key(char)
  end
  return ''
end

def decodeString (string)
  if(string == nil) 
    return ''
  end
  decoded = ''
  strSplit = string.split(" ")
  strSplit.each {|char| decoded += returnChar(char)}
  return decoded
end

puts returnChar('....-')
puts decodeString('-- -.--')

# puts morse["A"] 
# Get value by key.
# puts morse.key('.-') 
# Get key out of value.
