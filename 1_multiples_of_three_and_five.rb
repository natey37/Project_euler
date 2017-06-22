#If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
#Find the sum of all the multiples of 3 or 5 below 1000.

def sum_of_multiples_of_three_and_five(n)
  (1...n).to_a.select{|x| x % 3 == 0 || x % 5 == 0 }.reduce(:+)
end 

sum_of_multiples_of_three_and_five(1000) => 233168
