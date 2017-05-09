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