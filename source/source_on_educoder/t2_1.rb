#!/usr/bin/ruby

# gets 方法是 Ruby 中用于接收终端输入的方法
# 在此行代码中我们接收了终端输入的字符串，并将其赋值给 str 变量
# 请勿修改此处代码
str1 = gets
str2 = gets
# ******END******

# 按序完成如下功能
# 针对 str1 做如下操作：
#   1. 去除掉 str1 前后的空格，换行符，回车符
#   2. 删除掉 str1 中所有!(英文半角感叹号)
#   3. 将 str1 转换为全小写
# 针对 str2 做如下操作：
#   1. 将 str2 翻转
#   2. 将 str2 转换为整型数据
#
# *********以下是输出功能，请按序输出*********
# 1. 输出字符串 str1
# 2. 输出字符串 str2
#
#*********begin*********#
str1 = str1.strip
str1 = str1.delete("!")
str1 = str1.downcase
str2 = str2.reverse
str2 = str2.to_i
puts str1
puts str2








#********* end *********#

