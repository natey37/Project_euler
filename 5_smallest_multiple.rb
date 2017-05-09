# n is the number at the end of the range 
def smallest_multiple(n)
  dividers = (1..n)
  dividers.reduce(:lcm)
end 

smallest_multiple(20) => 232792560