def traverse(path)
  Dir.glob(["#{path}/**/*", "#{path}/**/.*"]).each do |name|   # 目录path 及其子目录下，所有文件名和隐藏文件
    unless File.directory?(name)
      process_file(name)
    end
  end
end

def process_file(path)
  puts path
end

traverse(ARGV[0])

