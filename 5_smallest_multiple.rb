#2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
#What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

def smallest_multiple(n)
  dividers = (1..n)
  dividers.reduce(:lcm)
end 

smallest_multiple(20) => 232792560
