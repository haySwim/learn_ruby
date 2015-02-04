# Dictionary class hold a list of user-defined words and their definition.
# User may add, list, find words and/or definitions, and print the dictionary.
class Dictionary
  def initialize
    @entries = {}
  end

  attr_reader :entries

  # Add hash to dictionary, strings will be converted to a key with a nil value.
  def add(hash_or_key_string)
    if hash_or_key_string.is_a?(Hash)
      @entries.merge!(hash_or_key_string)
    else
      @entries.merge!(hash_or_key_string => nil)
    end
  end

  # List words alphabetically.
  def keywords
    @entries.keys.sort!
  end

  # Returns true if the word is included in the dictionary.
  def include?(key)
    @entries.key?(key)
  end

  # Returns keys and values for each word that matches the user input.
  # E.g., dictionary.find(po) returns the entries for both potato and populate.
  def find(word)
    matches = word.match(/^#{word}.*/)
    if matches
      @entries.select do |key, value|
        { key => value } if key.match(/^#{word}.*/)
      end
    else
      {}
    end
  end

  # Formats the dictionary for printing.
  def printable
    printout = ''
    @entries.sort.each do |key, value|
      printout += "[#{key}] \"#{value}\"\n"
    end
    printout.chomp
  end
end
