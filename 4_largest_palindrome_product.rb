# n is the number of digits in the numbers being multiplied


def largest_palindrome_product(n) 
  array = []
  beginning = ("1" + ("0" * (n - 1))).to_i
  ending = ("9" + ("9" * (n - 1))).to_i
  x = (beginning..ending).to_a
  y = (beginning..ending).to_a
  x.each do |num1|
    y.each do |num2|
      product = num1 * num2
        if product.to_s == product.to_s.reverse 
          array << product
        end 
    end 
  end 
    array.sort.last
end 

# refactored 

def largest_palindrome_product(n)
  longest_palindrome = 0 
  beginning = ("1" + ("0" * (n - 1))).to_i
  ending = ("9" + ("9" * (n - 1))).to_i
    ending.downto(beginning) do |p| 
      p.downto(beginning) do |q|
        product = p * q 
          break if product <= max 
          if product.to_s == product.to_s.reverse 
            max = product 
          end 
      end 
    end 
      max
end 

largest_palindrome_product(3) => 906609