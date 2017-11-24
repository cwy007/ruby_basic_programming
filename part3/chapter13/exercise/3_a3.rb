a = (1..100).to_a.sort!

a3 = a.reject do |item|
  item % 3 != 0
end 

a.delete_if do |item|
  item % 3 == 0
end

puts "a3 = #{a3}"
puts "a = #{a}"
