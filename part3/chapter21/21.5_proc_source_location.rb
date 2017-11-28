require "./fizz_buzz.rb"

prc0 = Proc.new{nil}
prc1 = proc{|a| a}
prc2 = lambda{|a| a}

p prc0.source_location
p prc1.source_location
p prc2.source_location 

p fizz.source_location
p fizzbuzz.source_location
p buzz.source_location

