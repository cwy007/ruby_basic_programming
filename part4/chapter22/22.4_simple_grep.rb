pattern = Regexp.new(ARGV[0])
filename = ARGV[1]

File.open(filename) do |file|
  file.each_line do |line|
    if pattern =~ line
      print line
    end
  end
end

# ruby 22.4_simple_grep.rb '伽藍' cathedral.txt | wc
# ruby 22.4_simple_grep.rb 'バザール' cathedral.txt | wc
