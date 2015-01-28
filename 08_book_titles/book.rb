# Book class ensures that it's title attribute follows capitalization rules.
class Book
  # Turns takes string and returns title case version.
  def title=(string)
    @title = titleize(string)
  end

  attr_reader :title

  def titleize(string)
    # "Unimportant" words that should not be capitalized
    # if they are not the first word of the string.
    small_words = { ' And' => ' and',
                    ' The' => ' the',
                    ' A' => ' a',
                    ' An' => ' an',
                    ' In' => ' in',
                    ' Of' => ' of',
                    ' Over' => ' over' }
    # Splits the string into array of words, capitalizes them, and rejoins them.
    # Then matches small words with leading spaces and uncapitalizes them.
    string.split.each(&:capitalize!).join(' ')
      .gsub(/ \w+/) { |m| small_words.fetch(m, m) }
  end
end
