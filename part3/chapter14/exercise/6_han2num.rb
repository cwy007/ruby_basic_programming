def han2num(string)
  digit4 = digit3 = digit2 = digit1 = "0"     # 分别为： 千位 digit4， 百位 digit3
                                              #        十位 digit2， 个位 digit1
  nstring = string.dup
  nstring.gsub!(/一/, "1")     # gsub!(检索，替换)
  nstring.gsub!(/二/, "2")     # 先将 “七千八百二十三” 中的数值一一替换掉
  nstring.gsub!(/三/, "3")
  nstring.gsub!(/四/, "4")
  nstring.gsub!(/五/, "5")
  nstring.gsub!(/六/, "6")
  nstring.gsub!(/七/, "7")
  nstring.gsub!(/八/, "8")
  nstring.gsub!(/九/, "9")

  # 然后确定不同位数的值
  if nstring =~ /((\d)?千)?((\d)?百)?((\d)?十)?(\d)?$/   # ?   0 || more
    if $1                                               # ((\d)?千)?, \d 指数字 0-9
      digit4 = $2 || "1"               # $2 指 ((\d)?千)? 里面的  (\d)?
    end
    if $3                              # $3   ((\d)?百)?
      digit3 = $4 || "1"               # $4   (\d)?
    end
    if $5
      digit2 = $6 || "1"
    end
    digit1 = $7 || "0"
  end

  # 组合字串
  return (digit4+digit3+digit2+digit1).to_i
end

p han2num("七千八百二十三")  #=> 7823
p han2num("千八百二十三")    #=> 1823
p han2num("八百二十三")     #=> 823
p han2num("百三")          #=> 103
p han2num("二十三")        #=> 23
p han2num("十三")          #=> 13
p han2num("三")            #=> 3
