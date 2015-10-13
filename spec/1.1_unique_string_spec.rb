require_relative '../chapter_01/1.1_unique_string'

describe :has_dups? do
  it 'returns false for an empty or one-element string' do
    expect(has_dups?('')).to be false
    expect(has_dups?('a')).to be false
  end

  it 'returns false for a string with no dups' do
    expect(has_dups?('12')).to be false
    expect(has_dups?('123')).to be false
  end

  it 'returns true for a string with dups' do
    expect(has_dups?('aa')).to be true
    expect(has_dups?('abacdea')).to be true
  end

  it 'properly handles embedded newlines' do
    expect(has_dups?("abc\n456")).to be false
    expect(has_dups?("abc\n456c")).to be true
    expect(has_dups?("abc\n456\n")).to be true
  end
end
