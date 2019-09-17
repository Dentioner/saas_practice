#!/usr/bin/ruby

# 评级参考：
# - excellent 优
# - good 良
# - fair 中
# - poor 差
#
# 请在此处创建一个哈希，其键名包含上面所有的评级
# 由于每一类评级可能包含多个书籍，值全为空数组
# 请使用推荐的方式（Symbol法）创建哈希
#*********begin*********#
book_comments = { excellent: [], good: [],
                  fair: [], poor: [] }
#********* end *********#

# 此处为程序输入数据部分
# 输入的数据 book* 代表的是书名，comment* 代表的是评级
# 当变量后缀数字相同时，是一组书名与评级数据
# to_sym 方法是将字符串转换为符号类型的方法
# 请勿修改此处代码
book1 = gets.strip
comment1 = gets.strip.to_sym
book2 = gets.strip
comment2 = gets.strip.to_sym
book3 = gets.strip
comment3 = gets.strip.to_sym
# ******END******

# 请在此处完成如下操作：
# 1. 录入所有的书籍评价数据至你所创建的哈希中
# 2. 找出所有评级为良的书
#    1）将这些书计数并 !!输出!!
#    2）并将其书名使用连接符英文逗号(,)连接成字符串后 !!输出!!
# 3. 找出所有评级为差的书
#    1）将这些书计数并 !!输出!!
#    2）并将其书名使用连接符英文逗号(,)连接成字符串后 !!输出!!
# 4. 将哈希中所有的书名使用连接符英文逗号(,)连接成字符串后 !!输出!!
#
#*********begin*********#

hash = { book1 => comment1,
         book2 => comment2,
         book3 => comment3 }

arr = Array.new
hash2 = hash.clone
hash3 = hash.clone

counter = 0
key1 = hash.key(:good)
if key1 != nil
  counter += 1
  hash.delete(key1)
  arr = arr.push(key1)
end

key2 = hash.key(:good)
if key2 != nil
  counter += 1
  hash.delete(key2)
  arr =arr.push(key2)
end

key3 = hash.key(:good)
if key3 != nil
  counter += 1
  hash.delete(key3)
  arr = arr.push(key3)
end

puts counter
puts arr.join(',')

arr2 = Array.new

counter = 0
key1 = hash2.key(:poor)
if key1 != nil
  counter += 1
  hash2.delete(key1)
  arr2 = arr2.push(key1)
end

key2 = hash2.key(:poor)
if key2 != nil
  counter += 1
  hash2.delete(key2)
  arr2 =arr2.push(key2)
end

key3 = hash2.key(:poor)
if key3 != nil
  counter += 1
  hash2.delete(key3)
  arr2 = arr2.push(key3)
end

puts counter
puts arr2.join(',')

# puts hash3.keys.join(',')
# print hash3.keys.join(',')

# puts ",,"
# arr3 = hash3.keys
# puts arr3.join(',')

arr3 = hash3.to_a
arr_ex = []
arr_good = []
arr_fair = []
arr_poor = []
arr3.each do |name, remark|
  if remark == :excellent
    arr_ex = arr_ex.push(name)

  elsif remark == :good
    arr_good = arr_good.push(name)

  elsif remark == :fair
    arr_fair = arr_fair.push(name)
  else
    arr_poor = arr_poor.push(name)
  end
end

if arr_ex.length == 0
  arr_ex = arr_ex.push(nil)
end
if arr_good.length == 0
  arr_good = arr_good.push(nil)
end
if arr_fair.length == 0
  arr_fair = arr_fair.push(nil)
end
if arr_poor.length == 0
  arr_poor = arr_poor.push(nil)
end

arr_all = [arr_ex, arr_good, arr_fair, arr_poor]
puts arr_all.flatten().join(',')







#********* end *********#

