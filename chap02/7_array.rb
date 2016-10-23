# Given a sentence, return an array containing every other word.
# Punctuation is not part of the word unless it is a contraction.
# In order to not have to write an actual language parser, there won't be any punctuation too complex.
# There will be no "'" that is not part of a contraction.
# Assume each of these  charactsrs are not to be considered: ! @ $ # % ^ & * ( ) - = _ + [ ] : ; , . / < > ? \ |
#
# Examples
# alternate_words("Lorem ipsum dolor sit amet.")  # => ["Lorem", "dolor", "amet"]
# alternate_words("Can't we all get along?")      # => ["Can't", "all", "along"]
# alternate_words("Elementary, my dear Watson!")  # => ["Elementary", "dear"]

def alternate_words(string)

  result = Array.new
  puncArray = '!@$#%^&*()-=_+[]:;,./<>?\|'.chars
  puncArray.each do | punc |
    string = string.gsub(punc, " ")
  end

  fullArray = string.split(" ")
  fullArray.each_with_index do | str, index |
    if index.even?
      result << str
    end
  end
  return result
end



alternate_words("Lorem ipsum dolor sit amet.")
alternate_words("Can't we all get along?")
alternate_words("Elementary, my dear Watson!")
