MORSE_CODE = {
  '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
  '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J',
  '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
  '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
  '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y',
  '--..' => 'Z'
}.freeze

def decode_char(morse_char)
  MORSE_CODE[morse_char] || ' '
end

def decode_word(morse_word)
  morse_word.split.map { |morse_char| decode_char(morse_char) }.join
end

def decode_message(morse_message)
  morse_words = morse_message.split('   ')
  morse_words.map { |morse_word| decode_word(morse_word) }.join(' ')
end

morse_code_message = '.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...'
decoded_message = decode_message(morse_code_message)
puts decoded_message
