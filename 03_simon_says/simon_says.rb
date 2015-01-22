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

def titleize(string)
  string.split.each(&:capitalize!).join(' ')
end
