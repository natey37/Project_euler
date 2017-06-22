#The prime factors of 13195 are 5, 7, 13 and 29.
#What is the largest prime factor of the number 600851475143 ?

require 'prime'

def prime_factor(num)
  prime = 3 
  last_divisor = 0 
  while prime <= num 
    if num % prime == 0 && Prime.prime?(prime)
      last_divisor = prime 
      num = num / prime 
    end 
      prime += 1 
  end 
    return last_divisor
end 

prime_factor(600851475143) => 6857
