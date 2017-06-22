#The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
#Find the sum of all the primes below two million.

def prime?(num)
  (2..Math.sqrt(num)).none? {|i| num % i == 0 }
end 
# n equals upper limit 
def summation_of_primes(n)
  array = [2]
  start = 3
  until array.last > n
    if prime?(start)
       array << start
    end 
     start += 1 
  end 
    array.delete_at(-1)
    array.reduce(:+)
end 

summation_of_primes(2000000) => (142913828922)
