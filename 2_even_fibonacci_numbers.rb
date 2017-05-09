# n is number the fibonacci sequence will not exceed 
def even_fibonacci_numbers(n)
  array = [1, 2]
  until array.last > n 
    x = array[-2..-1].reduce(:+)
    array << x 
  end 
  array.delete_at(-1)
  array.select{|n| n.even?}.reduce(:+)
end 

fibonacci(4000000) => 4613732