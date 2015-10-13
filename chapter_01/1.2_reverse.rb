# CtCI 1.2
#   "Implement a vunction void reverse(char* str) in C or C++ which reverses a
#    null-terminated string."
#   Cracking the Coding Interview, p73

# For Ruby practice, I've chosen to interpret this question as follows: write
# a function which reverses a string by side-effect, using O(1) extra space.

def reverse(str)
  (str.size / 2).times do |i|
    j = str.size - 1 - i
    str[i], str[j] = str[j], str[i]
  end

  str
end
