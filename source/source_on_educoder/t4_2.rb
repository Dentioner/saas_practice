puts "请输入正方形的边长："
$square_length = gets.chomp.to_i
puts "-" * 20

class Rectangle2
  @@length = $len
  @@width  = $wid

  def self.area
    puts @@length * @@width
  end
end

# 请在下面按要求完成功能
# 请选择适当的实现方法
#*********begin*********#
class Square < Rectangle2
  @@length = $square_length
  @@width = $square_length
end

Square.area




#********* end *********#

