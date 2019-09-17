puts "请输入长度："
$len = gets.chomp.to_i
puts "请输入宽度："
$wid = gets.chomp.to_i
puts "-" * 20

# 请在下面按要求完成功能
# 请选择合适的类的方法类别
#*********begin*********#

class MyRectangle
  def self.area
    puts $len * $wid
  end
end


MyRectangle.area





#********* end *********#

