require_relative '../chapter_01/1.3_permutations'

# Note: tests updated as creator did not understand permutations

describe :is_permutation? do
  let (:input) { 'abc' }

  it 'returns true if A and B are empty' do
    expect(is_permutation?('', '')).to be true
  end

  it 'returns true if A and B are equal' do
    expect(is_permutation?(input, input)).to be true
  end

  it 'returns false if B is longer' do
    expect(is_permutation?(input, input + 'a')).to be false
  end

  it 'returns false if A is longer' do
    expect(is_permutation?(input + 'a', input)).to be false
  end

  it 'returns true for a simple case' do
    expect(is_permutation?(input, 'bac')).to be true
  end
end
