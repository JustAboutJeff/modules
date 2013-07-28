# Calculates and returns an array of "FizzBuzz" numbers up to an entered value
# Divisible by 3 = "Fizz", 5 = "Buzz", 3 and 5 = "FizzBuzz"


module FizzBuzz

  extend self

  def solve value
    value = value.to_i
    fizz_nums = []
    1.upto value do |count|
      if count % 15 == 0
        fizz_nums << "FizzBuzz"
      elsif count % 5 == 0
        fizz_nums << "Buzz"
      elsif count % 3 == 0
        fizz_nums << "Fizz"
      else
        fizz_nums << count
      end
    end
    fizz_nums
  end

end

if $0 === __FILE__
  value = ARGV[0].to_i
  puts FizzBuzz.solve value
end
