CHARACTER = ('a'..'z').to_a.push(' ')
MORSE_DECODE = ['.-', '-...', '-.-.', '-..', '.', '..-.', '--.', '....', '..', '.---', '-.-', '.-..', '--', '-.', '---', '.--.', '--.-', '.-.', '...', '-', '..-', '...-', '.--', '-..-', '-.--', '--..', '|']

def decode(morse_text)
  message = ''
  morse_text = morse_text.gsub('|', ' | ')
  arr = morse_text.split(' ')
  arr.each do |morse_code|
    message += CHARACTER[MORSE_DECODE.index(morse_code)]
  end
  message.upcase
end
