#!/usr/bin/ruby

# 本实训输入为两个数字，分别存储于 start_index 和 end_index
# start_index < end_index
# 以下代码的所有变量均可在你的代码块中使用
# 以下代码产生这两个数字之间所有整数的一个数组 arr
# 请勿修改此处代码
start_index = gets.to_i
end_index   = gets.to_i

arr = (start_index..end_index).to_a
# ******END******

# 请在此处对上面的数组 arr 按序进行如下操作：
# 1. 判断数组是否为空 并 !!输出返回值!!
# 2. 在数组的末尾增加 原数组最大值 + 1 的值
# 3. 在数组索引(index)为2的位置增加 数字100
# 4. 对数组进行排序
#
# *********以下是输出功能，请按序输出*********
# 5. 输出数组
#    输出: 使用连接符 英文逗号(,) 连接数组形成的字符串
# 6. 输出数组中元素值为100的个数
# 7. 输出数组的长度
#
#*********begin*********#
puts arr.empty?
a = arr[-1]
arr = arr.push(a + 1)
arr = arr.insert(2, 100)
arr = arr.sort
brr = arr.join(',')
puts brr
puts arr.count(100)
puts arr.length







#********* end *********#

