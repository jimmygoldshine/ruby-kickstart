# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#
# odds_and_evens("abcdefg",true)    # => "bdf"
# odds_and_evens("abcdefg",false)   # => "aceg"

def odds_and_evens(string, return_odds)
i = 0
string_length = string.length
new_string = ""
# First to check if return_odds is true (odd characters)
  if return_odds == true
    while i <= string_length - 1
      if i % 2 == 1
        new_string << string[i]
      end
      i += 1
    end
    return new_string


# Second to check if return_odds is false (even characters)
  elsif return_odds == false
    while i <= string_length - 1
      if i % 2 == 0
        new_string << string[i]
      end
      i += 1
    end
    return new_string
  end
end

puts odds_and_evens("abcdefg",true)
puts odds_and_evens("abcdefg",false)
