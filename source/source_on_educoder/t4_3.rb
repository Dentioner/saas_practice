puts "请输入长度："
$len = gets.chomp.to_i
puts "请输入宽度："
$wid = gets.chomp.to_i
puts "-" * 20

# 请在下面完成要求的功能
#*********begin*********#

class Rectangle
  def initialize(len, wid)
    @length = len
    @width = wid
  end

  def area
    puts @length * @width
  end
end


rec = Rectangle.new($len, $wid)
rec.area



#********* end *********#
