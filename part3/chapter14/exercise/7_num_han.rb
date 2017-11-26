# # 定义一个方法 num2han 将数字 0到9999 转换成汉字的写法。例如：1234 转换成 “一千二百三十四”
#
# def num2han(num)
#   digit4 = digit3 = digit2 = digit1 = "0"
#
#   nnum = num.dup.to_s
#   if /((((\d)?\d)?\d)?\d)?/ =~ nnum  # (((($4) $3) $2) $1)
#     if $1
#       digit4 = (nnum[-3] + "千")
#     else
#       digit4 = ""
#     end
#     if $3
#       digit3 = nnum[-2] + "百"
#     else
#       digit3 = ""
#     end
#     if $2
#       digit2 = nnum[-1] + "十"
#     else
#       digit2 = ""
#     end
#     digit1 = nnum[0]
#   end
#
#   nnnum = "#{digit4}#{digit3}#{digit2}#{digit1}"
#
#   nnnum.gsub!(/1/, '一')     # gsub!(检索，替换)
#   nnnum.gsub!(/2/, '二')     # 先将 “七千八百二十三” 中的数值一一替换掉
#   nnnum.gsub!(/3/, '三')
#   nnnum.gsub!(/4/, '四')
#   nnnum.gsub!(/5/, '五')
#   nnnum.gsub!(/6/, '六')
#   nnnum.gsub!(/7/, '七')
#   nnnum.gsub!(/8/, '八')
#   nnnum.gsub!(/9/, '九')
#
#   return nnnum
# end
#
# p num2han(1234)
# p num2han(134)
# p num2han(34)
# p num2han(4)
