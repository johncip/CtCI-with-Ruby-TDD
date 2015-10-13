# CtCI 1.3
#   "Given two strings, decide if one is a permutation of the other."
#   Cracking the Coding Interview, p 73

def is_permutation_hash?(a, b)
  # O(n) for characters
  freq = Hash.new(0)

  a.chars.each { |c| freq[c] += 1 }
  b.chars.each { |c| freq[c] -= 1 }

  freq.values.all? { |val| val == 0 }
end

def is_permutation_sort?(a, b)
  # O(n log n) but so clean
  a.chars.sort == b.chars.sort
end

alias :is_permutation? :is_permutation_hash?
