#Let d(n) be defined as the sum of proper divisors of n (numbers less than n which divide evenly into n).
#If d(a) = b and d(b) = a, where a ≠ b, then a and b are an amicable pair and each of a and b are called amicable numbers.
#For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22, 44, 55 and 110; therefore d(220) = 284. The proper divisors of 284 are 1, 2, 4, 71 and 142; so d(284) = 220.
#Evaluate the sum of all the amicable numbers under 10000.

def amicable_numbers(upper_limit)
  start = 2
  array = []
    while start < upper_limit
      sum = factors(start).reduce(:+)
        if factors(sum).reduce(:+) == start && sum != start
          array << start 
          array << sum 
        end 
      start += 1 
    end 
      return array.uniq.reduce(:+)
end 

def factors(n)
  factors = []
    (1..n/2).each do |num|
      if n % num == 0 
        factors << num 
      end 
    end 
      factors
end 

amicable_numbers(10000) => 31626

