# Iterates over a ruby hash of nested hashes and returns all the values as an array

module HashValues

  extend self

  def extract hash_data = {}, result_array = []
    hash_data.each_value do |hash_value|
      if hash_value.is_a? Hash
        self.extract(hash_value,result_array)
      else
        result_array << hash_value
      end
    end
    return result_array
  end

end

if $0 == __FILE__
  test_hash = {a: 1, b: 2, c: {a: 3, b: 4, c: 5}, d: 6, e:7, f: {a: 8, b: {a: 9, b: {a: 10 }, c: 11}}}
  expected_array = [1,2,3,4,5,6,7,8,9,10,11]
  actual_array   = HashValues.extract(test_hash)
  p actual_array
  puts "--> TEST PASSED" if actual_array == expected_array
end
