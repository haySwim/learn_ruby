def echo(string)
  string
end

def shout(string)
  string.upcase
end

def repeat(string, n = 2)
  responce = ''
  n.times { responce += "#{string} " }

  responce.strip
end

def start_of_word(word, letters)
  word.slice(0..letters - 1)
end

def first_word(string)
  string.split[0]
end

# Turns takes string and returns title case version.
def titleize(string)
  # "Unimportant" words that should not be capitalized
  # if they are not the first word of the string.
  small_words = { ' And' => ' and',
                  ' The' => ' the',
                  ' A' => ' a',
                  ' An' => ' an',
                  ' Over' => ' over' }
  # Splits the string into array of words, capitalizes them, and rejoins them.
  # Then matches small words with leading spaces and uncapitalizes them.
  string.split.each(&:capitalize!).join(' ')
    .gsub(/ \w+/) { |m| small_words.fetch(m, m) }
end
