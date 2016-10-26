# Given a nonnegative integer, return a hash whose keys are all the odd nonnegative integers up to it
# and each key's value is an array containing all the even non negative integers up to it.
#
# Examples:
# staircase 1  # => {1 => []}
# staircase 2  # => {1 => []}
# staircase 3  # => {1 => [], 3 => [2]}
# staircase 4  # => {1 => [], 3 => [2]}
# staircase 5  # => {1 => [], 3 => [2], 5 =>[2, 4]}

def staircase(n)
  hash = Hash.new
  (1..n).each do |i|
    if i.odd?
      hash[i] = even_nums(i)
    end
  end
  hash
end

def even_nums(n)
  ary = Array.new
  (1..n).each do |i|
    if i.even?
      ary << i
    end
  end
  ary
end

print staircase(3)
print staircase 5
