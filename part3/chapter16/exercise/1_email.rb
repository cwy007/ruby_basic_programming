# email 邮箱格式：帐号名@域名

def get_local_and_domain(str)
  /^([^@]+)@(.*)$/ =~ str
  localpart = $1
  domain    = $2
  return [localpart, domain]
end

p get_local_and_domain("info@example.com")
