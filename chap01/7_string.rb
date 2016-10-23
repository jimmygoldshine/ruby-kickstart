# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
  new_string = ""
  i = 0
  while i < string.length - 1
    if string.downcase[i] == "r"
      new_string << string[i+1]
      i += 1
    else
      i += 1
    end
  end
  return new_string
end
