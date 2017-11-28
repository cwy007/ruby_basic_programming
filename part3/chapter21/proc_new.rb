hello1 = Proc.new do |name|
  puts "Hello, #{name}."
end

hello2 = proc do |name|
  puts "Hello, #{name}."
end

hello1.call("World")
hello2.call("Ruby")

double = Proc.new do |*args|
  args.map{|i| i * 2 }
end

p double.call(1, 2, 3)
p double[2, 3, 4]

prc1 = Proc.new do |a, b, c|
  p [a, b, c]
end

prc1.call(1, 2)

prc2 = lambda do |a, b, c|
  p [a, b, c]
end 
prc2.call(1, 2)

