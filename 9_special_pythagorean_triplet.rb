#A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
#a2 + b2 = c2
#For example, 32 + 42 = 9 + 16 = 25 = 52.
#There exists exactly one Pythagorean triplet for which a + b + c = 1000.
#Find the product abc.

def special_pythagorean_triplet(x)
  #c cant be larger then half of x 
  array = []
  (1..500).each do |c|
    (1..c).each do |b|
      (1..b).each do |a|
        if ((a * a) + (b * b) == (c * c)) && a + b + c == x
          array << [a, b, c]
        end 
      end 
    end 
  end 
    array.flatten.reduce(:*)
end 

special_pythagorean_triplet(1000) => (31875000)
