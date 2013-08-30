class Multiples3and5
  def initialize(n)
    @n = n
  end

  # def multiple_of_3?(n)
  #   n % 3 == 0
  # end

  # def multiple_of_5?(n)
  #   n % 5 == 0
  # end

  def multiple_of_3_or_5?(n)
    n % 3 == 0 || n % 5 == 0
  end

  def multiples_of_3_or_5
    1.upto(@n).select { |n| n if multiple_of_3_or_5?(n) }
  end

  def sum_of_multiples_of_3_or_5
    multiples_of_3_or_5.inject(:+)
  end
end

#simple execution test
puts Multiples3and5.new(1000).sum_of_multiples_of_3_or_5