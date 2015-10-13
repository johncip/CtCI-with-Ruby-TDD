require_relative '../chapter_01/1.3_permutations'

describe :is_permutation? do
  it 'returns true if B is empty' do
    expect(is_permutation?('123', '')).to be true
    expect(is_permutation?('', '')).to be true
  end

  it 'returns false if B is longer than A' do
    expect(is_permutation?('123', '12345')).to be false
    expect(is_permutation?('123', '12323')).to be false
  end

  it 'returns true if B is a single element of A' do
    expect(is_permutation?('123', '1')).to be true
  end
end
