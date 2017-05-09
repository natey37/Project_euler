#A perfect number is a number for which the sum of its proper divisors is exactly equal to the number. For example, the sum of the proper divisors of 28 would be 1 + 2 + 4 + 7 + 14 = 28, which means that 28 is a perfect number.

#A number n is called deficient if the sum of its proper divisors is less than n and it is called abundant if this sum exceeds n.

#As 12 is the smallest abundant number, 1 + 2 + 3 + 4 + 6 = 16, the smallest number that can be written as the sum of two abundant numbers is 24. By mathematical analysis, it can be shown that all integers greater than 28123 can be written as the sum of two abundant numbers. However, this upper limit cannot be reduced any further by analysis even though it is known that the greatest number that cannot be expressed as the sum of two abundant numbers is less than this limit.

#Find the sum of all the positive integers which cannot be written as the sum of two abundant numbers.


def non_abundant_sums
  max = 28123
  range = (2..28123)
  abundants = range.select{|n| abundant?(n) }
  numbers_made_from_abundants = []
    abundants.each do |i|
      abundants.each do |j|
        sum = i + j 
        break if sum > max 
        numbers_made_from_abundants << sum 
      end 
    end 
      (xs.to_a - numbers_made_from_abundants).reduce(:+)
end 

def abundant?(n)
  if factors(n).reduce(:+) > n 
    return true 
  else 
    return false 
  end 
  
end 

def factors(num)
  array = []
  (1..num/2).each do |n|
    if num % n == 0 
      array << n 
    end 
  end 
  array
end 


non_abundant_sums => (4179871)