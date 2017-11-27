# encoding: utf-8
Dir.glob("*.txt") do |filename|
  if filename == "foo.txt".encode("UTF8-MAC")
    puts "found."; exit
  end
end
puts "not found."

