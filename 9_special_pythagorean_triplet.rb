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