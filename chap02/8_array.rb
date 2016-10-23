# Given an array of elements, return true if any element shows up three times in a row
#
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false

def got_three?(array)
  array.each_with_index do | element, index |
    if index < (array.length - 2)
      if array[index+1] == element && array[index+2] == element
        return true
      end
    end
  end
  return false
end

puts got_three? [1, 2, 2, 2, 3]
puts got_three? ['a', 'a', 'b']
puts got_three? ['a', 'a', 'a']
puts got_three? [1, 2, 1, 1]
