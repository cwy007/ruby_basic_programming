require "net/http"  # Net::HTTP class
require "uri"       # URI module

url = URI.parse("http://www.ruby-lang.org/ja/")   # module_function :parse;   return URI::HTTP object
http = Net::HTTP.start(url.host, url.port)
doc = http.get(url.path)
puts doc
