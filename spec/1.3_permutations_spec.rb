require_relative '../chapter_01/1.3_permutations'

# Note: tests updated as creator did not understand permutations

describe :is_permutation? do
  it 'returns true if B is empty' do
    expect(is_permutation?('', '')).to be true
  end

  it 'returns true if A and B are equal' do
    expect(is_permutation?('abc', 'abc')).to be true
  end

  it 'returns false if B is longer than A' do
    expect(is_permutation?('abc', 'abcde')).to be false
    expect(is_permutation?('abc', 'abcbc')).to be false
  end

  it 'returns true for a simple case' do
    expect(is_permutation?('abc', 'bac')).to be true
  end
end
