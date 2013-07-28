# Exploring how to crack open and rewrite class instance methods

class Array

  # The #echo method can be used to render messages a specified
  # number of times to the STDOUT. A simple test method:
  def echo args
    message_arr = Array.new
    message, count = args.first, args.last.to_i
    count.times { message_arr << message }
    return message_arr
  end

  # Rewriting #map method using #each as if executed within IRB:
  # def map
    # modified_arr = Array.new
    # self.each do |elem|
    #   modified_arr << yield(elem)
    # end
    # return modified_arr
  # end

  # Rewriting #map method using #each using single script execution here:
  def map args
    # Here args.last would be the code inside block braces {} something like '|i| i-1'
    proc = eval "Proc.new {#{args.last}}"
    modified_arr = Array.new
    self.each do |elem|
      modified_arr << proc.call(elem)
    end
    return modified_arr
  end

end

if $0 == __FILE__
  test_array = [1,1,1,1]
  method     = ARGV[0]
  args       = ARGV[1..-1]
  result = test_array.send(method,args)
  p result
end
