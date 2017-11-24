def fahr2cels(fahr)
  (fahr.to_f - 32) * 5.0 / 9.0
end

(1..100).each do |i|
  puts "#{i}: " + "#{fahr2cels(i)}"
end
