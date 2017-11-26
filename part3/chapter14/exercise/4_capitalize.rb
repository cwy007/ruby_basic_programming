str = "Ruby is an object oritented programming language"

ary = str.split 
ary.collect! do |s|
  s.capitalize
end 

p ary.join(" ") 

  
