# A module to perform binary and linear searches across array data

module Search

  extend self

  def linear lo, hi, target
    begin
      if lo == target
        result = "#{target} was FOUND in the set"
      elsif lo == hi
        result = "#{target} was NOT FOUND in the set"
      end
      lo += 1
    end until result
    result
  end

  def binary lo, hi, target
    begin
      mid = (lo + hi) / 2
      if mid == target
        result = "#{target} was FOUND in the set"
      elsif mid == hi
        result = "#{target} was NOT FOUND in the set"
      elsif target > mid
        lo = mid + 1
      elsif target < mid
        hi = mid - 1
      end
    end until result
    result
  end
end

if $0 == __FILE__
  # Test by entering two range values and a target to search for within

  lo, hi, target = ARGV[0].to_i, ARGV[1].to_i, ARGV[2].to_i
  raise "The first value in the range must be lower than the second" if lo > hi

  puts "SEARCH RESULTS MATCH!" if Search.linear(lo,hi,target) == Search.binary(lo,hi,target)

  require 'benchmark'

  Benchmark.bmbm do |x|
    x.report("LINEAR:") { Search.linear lo, hi, target }
    x.report("BINARY:") { Search.binary lo, hi, target }
  end
end
