# Calculates and displays fibonacci numbers up to an entered value

module Fibonacci

  extend self

  def solve value
    fib_nums = []
    sum = 0
    while fib_nums.count < value
      if fib_nums.count > 0
        fib_nums << sum
        sum = fib_nums[-1] + fib_nums[-2]
      else
        fib_nums << sum
        sum += 1
      end
    end
    fib_nums
  end

end

if $0 == __FILE__
  value = ARGV[0].to_i
  puts Fibonacci.solve value
end
