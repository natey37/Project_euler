#num is the number we are finding the largest prime factor for

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