class Multiples3and5
  def initialize(n)
    raise ArgumentError.new("Argument must be an integer") if n.class != Fixnum
    @n = n
  end

  def multiple_of_3_or_5?(n)
    n % 3 == 0 || n % 5 == 0
  end

  def multiples_of_3_or_5
    (1...@n).select { |n| n if multiple_of_3_or_5?(n) }
  end

  def sum_of_multiples_of_3_or_5
    multiples_of_3_or_5.inject(:+)
  end
end

#simple execution test
puts Multiples3and5.new(1000).sum_of_multiples_of_3_or_5
