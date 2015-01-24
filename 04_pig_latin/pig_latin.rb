def translate(word)
  last_letter = word.length - 1

  if word.match(/[aeiou]/)[0]
    word + 'ay'
  else
    word[(1..last_letter)] + word[0] + 'ay'
  end
end
