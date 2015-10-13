# CtCI 1.1
#   "Implement an algorithm to determine if a string has all unique characters.
#    What if you cannot use additional data structures?"
#   Cracking the Coding Interview, p73

def has_dups?(str)
  str.size != str.chars.uniq.size
end

require 'set'

def has_dups_alt?(str)
  # first attempt
  seen = Set.new

  str.chars do |char|
    return true if seen.include?(char)
    seen << char
  end

  return false
end

# If we can't use additional data structures, we can use a doubly-nested loop:
# for each char at i, check each char at j = i+1 to len for equality: O(n^2).

# Or, if strings are mutable, we can also sort the characters and look at each
# consecutive pair: O(n log n)
