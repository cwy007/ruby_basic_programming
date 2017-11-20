file = File.open(ARGV[0])
file.each_line do |line|
  next if /^\s*$/ =~ line # 空行
  next if /^#/ =~ line    # 以“#”开头的行
  puts line
end
file.close

#$ ruby 6.15_strip.rb 6.16_fack.rb > 6.17_stripped_fact.rb
