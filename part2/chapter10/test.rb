ltotal=0
wtotal=0
ctotal=0

ARGV.each do |file|
  begin
    input = File.open(file)     # A
    l=0
    w=0
    c=0
    input.each_line do |line|
      l += 1
      c += line.size
      line.sub!(/^\s+/, "")
      ary = line.split(/\s+/)
      w += ary.size
    end
    input.close
    printf("%8d %8d %8d %s\n", l, w, c, file)
    ltotal += l
    wtotal += w
    ctotal += c
  rescue => ex                   # 指定一个变量，引用异常对象
    print ex.message, "\n"
  end
end

printf("%8d %8d %8d %s\n", ltotal, wtotal, ctotal, "total")
