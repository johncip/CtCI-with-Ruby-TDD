require 'pp'
require_relative '../chapter_01/1.6_rotate_matrix'

describe MyMatrix do
  xit 'rotates a 2x2 matrix' do
    m = MyMatrix.build(2, 2) { |r, c| r - c }
    # pp m
    _o = MyMatrix.build(2, 2) { 0 }
    r = MyMatrix.build(2, 2) { 0 }
    r[0][0] = -1
    r[1][1] = 1
    # pp r
    expect(MyMatrix.rotate(m)).to eq r
  end

  xit 'rotates a 3x3 matrix' do
    # Generate a 'serial' matrix from 0-8
    # Better way to calculate this?
    m = MyMatrix.build(3, 3) { |r, c| ((r + 1 * c + 1) + r * 2) - 1 }
    # pp m
    _o = MyMatrix.build(3, 3) { 0 }
    r = MyMatrix.build(3, 3) { 0 }
    r[0] = [2, 5, 8]
    r[1] = [1, 4, 7]
    r[2] = [0, 3, 6]
    # pp r
    expect(MyMatrix.rotate(m)).to eq r
  end
end
