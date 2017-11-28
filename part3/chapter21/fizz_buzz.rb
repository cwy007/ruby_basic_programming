fizz = proc{|n| n % 3 == 0 }
buzz = proc{ |n| n % 5 == 0 }
fizzbuzz = proc{ |n| n % 3 == 0 && n % 5 == 0 }

(1..100).each do |i|
  case i 
  when fizzbuzz
    puts "Fizz Buzz"
  when fizz
    puts "Fizz"
  when buzz
    puts "Buzz"
  else
    puts i 
  end
end

p "============"
p fizz.arity	
p fizz.parameters
p fizz.lambda?

