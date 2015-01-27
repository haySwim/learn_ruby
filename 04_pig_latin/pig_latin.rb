def translate(string)
  pig_latin = ''
  string.split.each do |word|
    if word[0].match(/^[aeiou]/)
      pig_latin += word + 'ay '
    else
      pig_latin += word + word.slice!(/(^qu|^[^aeio]+)/) + 'ay '
    end
  end
  pig_latin.strip
end
