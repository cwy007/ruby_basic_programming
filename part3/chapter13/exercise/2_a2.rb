a = (1..100).to_a.sort!

a2 = a.collect do |item|
  item * 100
end

a.collect! do |item|
  item * 100
end

p "a2 = " +  "#{a2}" 
puts  
p "a = " +  "#{a}"
