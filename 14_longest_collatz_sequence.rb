# n is the upper limit of the search
def longest_collatz_sequence(n)
  n.downto(1) do |i|
    x = length_of_collatz_sequence(i)
    array << x 
  end 
    y = array.max
    longest_collatz_number = array.index(y)
    
    return n - longest_collatz_number
end

def length_of_collatz_sequence(n)    
   i = 0 
   until n == 1
    n = n.odd? ? (n * 3 + 1): n/2
    i += 1 
  end 
   i + 1 
end 

longest_collatz_sequence(1000000) => 837799