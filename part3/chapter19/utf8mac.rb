# encoding: utf-8
Dir.glob("*.txt") do |filename|
  if filename == "foo.txt"
    puts "found."; exit
  end
end
puts "not found."

