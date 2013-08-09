// Calculates and returns an array of "FizzBuzz" numbers up to an entered value
// Any values that are divisible by 3 = "Fizz", 5 = "Buzz", 3 and 5 = "FizzBuzz"

var FizzBuzz = {
  solve: function(value) {
    var result = []
    for(var count = 1; count <= value; count++) {
      if(count % 15 === 0) {
        result.push('FizzBuzz')
      }
      else if(count % 3 === 0) {
        result.push('Fizz')
      }
      else if(count % 5 === 0) {
        result.push('Buzz')
      }
      else {
        result.push(count.toString())
      }
    }
    return result
  }
}

FizzBuzz.solve(31)
