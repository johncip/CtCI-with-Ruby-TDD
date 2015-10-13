# CtCI 1.6
#   "Given an image represented by an NxN matrix, where each pixel in the image is 4 bytes,
#    write a method to rotate the image by 90 degress. Can you do this in place?"
#   Cracking the Coding Interview, p 73

class MyMatrix
  def self.build(_r, _c, &_block)
  end

  def self.rotate(_m)
  end
end

describe MyMatrix do
  it 'rotates a 2x2 matrix' do
    m = MyMatrix.build(2, 2) { |r, c| r - c }
    pp m
    _o = MyMatrix.build(2, 2) { 0 }
    r = MyMatrix.build(2, 2) { 0 }
    r[0][0] = -1; r[1][1] = 1
    pp r
    expect(MyMatrix.rotate(m)).to eq r
  end

  it 'rotates a 3x3 matrix' do
    # Generate a 'serial' matrix from 0-8
    # Better way to calculate this?
    m = MyMatrix.build(3, 3) { |r, c| ((r + 1 * c + 1) + r * 2) - 1 }
    pp m
    _o = MyMatrix.build(3, 3) { 0 }
    r = MyMatrix.build(3, 3) { 0 }
    r[0] = [2, 5, 8]; r[1] = [1, 4, 7]; r[2] = [0, 3, 6]
    pp r
    expect(MyMatrix.rotate(m)).to eq r
  end
end
