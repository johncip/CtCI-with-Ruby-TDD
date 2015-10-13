# CtCI 1.1
#   "Implement an algorithm to determine if a string has all unique characters.
#    What if you cannot use additional data structures?"
#   Cracking the Coding Interview, p73

require 'set'

def hasDups?(str)
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

describe 'hasDups?' do
  it 'returns false for an empty or one-element string' do
    expect(hasDups?('')).to be false
    expect(hasDups?('a')).to be false
  end

  it 'returns false for a string with no dups' do
    expect(hasDups?('12')).to be false
    expect(hasDups?('123')).to be false
  end

  it 'returns true for a string with dups' do
    expect(hasDups?('aa')).to be true
    expect(hasDups?('abacdea')).to be true
  end

  it 'properly handles embedded newlines' do
    expect(hasDups?("abc\n456")).to be false
    expect(hasDups?("abc\n456c")).to be true
    expect(hasDups?("abc\n456\n")).to be true
  end
end
