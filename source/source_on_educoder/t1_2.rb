

$users_count      = 0          # 打招呼的总次数
$current_username = 'Educoder'

# 定义方法，完成如下功能
# 0. 接收传递参数 name
# 1. 完成对当前用户名 $current_username 的更改
# 2. 完成输出操作，输出格式为： Hello, #名字!
#    语法参考： puts "Hello, #{名字的变量}!"
#*********begin*********#
def hello(name)
  $current_username = name
  puts "Hello, #{name}"
end



#********* end *********#

# 定义方法，完成如下功能
# 1. 使用上面变量名为 $users_count 的变量，并完成自增操作
#    自增语法为： a += 1
# 2. 按照 'ToTal Number of Greetings: 0' 的格式输出 Robot 的总打招呼次数
#    语法参考: puts "ToTal Number of Greetings: #{打招呼次数的变量}"
#*********begin*********#
hello("Jack")
$users_count += 1
puts "Total Number of Greeting: #{$users_count}"
hello("David")
$users_count += 1
puts "Total Number of Greeting: #{$users_count}"


#********* end *********#

# 在此处调用方法
# 完成对应输出




