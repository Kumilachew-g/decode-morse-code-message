def decode_char(char)
chars_to_morse_message = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E', '..-.' => 'F',
    '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L',
    '--' => 'M', '-.' => 'N', '---' => 'O', '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R',
    '...' => 'S', '-' => 'T', '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X',
    '-.--' => 'Y', '--..' => 'Z', '   ' => ' ', ' ' => ''
  }
  chars_to_morse_message[char]
end

def decode_word(word)
    last_word = ''
    word.split(/ /).each do |char|
      last_word += decode_char(char)
    end
    last_word
  end

def decode_morse_code_sentence(sentence)
    final_sentence = ''
    sentence = sentence.split(/   /)
    sentence.each do |word|
      final_sentence += decode_word(word)
      final_sentence += ' '
    end
    final_sentence
end

puts decode_morse_code_sentence('-- -.--   -. .- -- .')
# MY NAEME
puts decode_morse_code_sentence('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
# A BOX FULL OF RUBIES