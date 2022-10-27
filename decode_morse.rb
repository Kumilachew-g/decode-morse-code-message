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