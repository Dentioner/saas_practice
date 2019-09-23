input_value = gets.chomp

# 请在下面完成要求的功能
# 可能使用到的方法：
#   字符串长度：str.length
#   字符串清空：str.clear
#*********begin*********#

begin
  length = input_value.length
  raise ArgumentError if length < 5 || length > 20

rescue ArgumentError
  puts "String does not meet the requirements!"
rescue StandardError
  puts "Error!Please Check!"

ensure
  puts "I'm Finished!"

end





#********* end *********#

