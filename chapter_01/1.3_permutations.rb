# CtCI 1.3
#   "Given two strings, decide if one is a permutation of the other."
#   Cracking the Coding Interview, p 73

describe 'is_permutation?' do
  it 'returns true if B is empty' do
    expect(is_permutation?('123', '')).to be_true
    expect(is_permutation?('', '')).to be_true
  end

  it 'returns false if B is longer than A' do
    expect(is_permutation?('123', '12345')).to be_false
    expect(is_permutation?('123', '12323')).to be_false
  end

  it 'returns true if B is a single element of A' do
    expect(is_permutation?('123', '1')).to be_true
  end
end
