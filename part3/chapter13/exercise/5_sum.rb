a = (1..100).to_a.sort!

result = 0
a.each do |i|
  result += i
end

puts result

