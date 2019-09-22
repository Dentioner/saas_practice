puts "请输入你的名字："
my_name = gets.chomp.to_s

# 请在下面按要求完成功能
#*********begin*********#
module HELLO5_1
  def say_hello(my_name)
    puts "Hello, " + my_name
  end
end

class TEST
  extend HELLO
end

TEST.say_hello(my_name)

#********* end *********#

