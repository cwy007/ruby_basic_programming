def copy(from, to)
  src = File.open(from)       # 原文件from (A)
  begin
    dst = File.open(to, "w")  # 目标文件to (B)
    data = src.read
    dst.write(data)
    dst.close
  ensure
    src.close                 # (C)
  end
end

copy("10.1_wc.rb","test.rb")
