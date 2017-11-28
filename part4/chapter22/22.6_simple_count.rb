pattern = Regexp.new(ARGV[0])
filename = ARGV[1]

count = 0 
File.read(filename).scan(pattern) do
  count += 1  
end

puts "count: #{count}"

# ruby 22.4_simple_grep.rb '伽藍' cathedral.txt | wc
# ruby 22.4_simple_grep.rb 'バザール' cathedral.txt | wc
