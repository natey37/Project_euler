#By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
#What is the 10 001st prime number?

def prime?(n)
  (2..Math.sqrt(n)).none? {|f| n % f == 0}
end

def number_prime(n)
  array = []
  start = 2
  until array.size == n 
    if prime?(start)
      array << start 
    end 
    start += 1 
  end 
  array.last
end 

number_prime(10001) => 104743
