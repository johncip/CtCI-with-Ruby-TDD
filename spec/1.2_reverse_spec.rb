require_relative '../chapter_01/1.2_reverse'

describe :reverse do
  let(:input) { 'ab' }

  it 'handles the empty string' do
    expect(reverse('')).to eq('')
  end

  it 'handles strings of length one' do
    expect(reverse('a')).to eq('a')
  end

  it 'handles a simple example' do
    expect(reverse('ab')).to eq('ba')
  end

  it 'works by side effect' do
    reverse(input)
    expect(input).to eq('ba')
  end

  it "doesn't initialize an array" do
    # NB: doesn't check "foo = []"
    expect(Array).not_to receive(:new)
    reverse(input)
  end

  it "doesn't use the built-in reverse" do
    expect(input).not_to receive(:reverse)
    reverse(input)
  end
end
