# encoding: utf-8

Dir.glob("*.txt") do |filename|
  if filename.encode("UTF8-MAC").encode("UTF-8") == "foo.txt"
    puts "found."; exit
  end
end

puts "not found."
