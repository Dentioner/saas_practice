puts "你的名字是："
you_name = gets.chomp.to_s

# 请在下面按要求完成功能
#*********begin*********#
module HELLO
  def hello
    puts "Hello, My name is Educoder"
  end
end

module BYE
  def bye(your_name)
    puts "Bye, " + your_name
  end
end

class Robot
  include HELLO
  include BYE
end

robot = Robot.new
robot.hello
robot.bye(you_name)

#********* end *********#

