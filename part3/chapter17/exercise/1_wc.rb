def wc(file)
  nline = nword = nchar = 0
  File.open(file) do |io|
    io.each do |line|
      words = line.split(/\s+/).reject{|w| w.empty?}
      nline += 1
      nword += words.length
      nchar += line.length
    end
  end
  puts "lines=#{nline} words=#{nword} chars=#{nchar}"
end

wc(__FILE__)

