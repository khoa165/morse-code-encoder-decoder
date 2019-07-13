CHARACTER = ('a'..'z').to_a.push(' ')
MORSE_ENCODE = ['.- ', '-... ', '-.-. ', '-.. ', '. ', '..-. ', '--. ', '.... ', '.. ', '.--- ', '-.- ', '.-.. ', '-- ', '-. ', '--- ', '.--. ', '--.- ', '.-. ', '... ', '- ', '..- ', '...- ', '.-- ', '-..- ', '-.-- ', '--.. ', '|']
def encode(text)
  morse = ''
  text.strip.downcase.gsub(/[^a-z0-9\s]/, '').each_char do |c|
    morse += MORSE_ENCODE[CHARACTER.index(c)]
  end
  morse.strip.gsub(' |', '|') # remove all whitespace before |
end
