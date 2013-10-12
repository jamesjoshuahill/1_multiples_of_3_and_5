require 'multiples_of_3_and_5'

describe Multiples3and5 do
  
  let(:multiple_10) { Multiples3and5.new(10) }
  let(:multiple_5) { Multiples3and5.new(5) }

  it 'should only accept an integer as the argument' do
    expect { Multiples3and5.new }.to raise_error(ArgumentError)
    expect { Multiples3and5.new([]) }.to raise_error(ArgumentError)
  end

  it 'should know if a number is a multiple of 3 or 5' do
    expect(multiple_10.multiple_of_3_or_5?(3)).to be_true
    expect(multiple_10.multiple_of_3_or_5?(5)).to be_true
  end

  it 'should list the multiples of 3 or 5 below the given number' do
    expect(multiple_10.multiples_of_3_or_5).to eq [3, 5, 6, 9]
    expect(multiple_5.multiples_of_3_or_5).to eq [3]
  end

  it 'should sum the multiples of 3 or 5 up to the given number' do
    expect(multiple_10.sum_of_multiples_of_3_or_5).to eq 23
    expect(multiple_5.sum_of_multiples_of_3_or_5).to eq 3
  end

end
