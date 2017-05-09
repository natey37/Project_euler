def sum_square_different(upper_limit)
  sum_of_squares = 0 
  upper_limit.downto(1) do |i|
    num_squared = i * i 
    sum_of_squares += num_squared
  end 
    sum_of_range = (1..upper_limit).reduce(:+)
    square_of_sum = sum_of_range * sum_of_range
    square_of_sum - sum_of_squares
end 

sum_square_different(100) => (25164150)