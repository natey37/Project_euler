#The sum of the squares of the first ten natural numbers is,
#12 + 22 + ... + 102 = 385
#The square of the sum of the first ten natural numbers is,
#(1 + 2 + ... + 10)2 = 552 = 3025
#Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.
#Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

def sum_square_difference(upper_limit)
  sum_of_squares = 0 
  upper_limit.downto(1) do |i|
    num_squared = i * i 
    sum_of_squares += num_squared
  end 
    sum_of_range = (1..upper_limit).reduce(:+)
    square_of_sum = sum_of_range * sum_of_range
    square_of_sum - sum_of_squares
end 

sum_square_difference(100) => (25164150)
