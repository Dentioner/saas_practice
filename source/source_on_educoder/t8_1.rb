rectangle_len = gets.chomp.to_i
rectangle_wid = gets.chomp.to_i
triangle_bottom = gets.chomp.to_i
triangle_high = gets.chomp.to_i
puts "-" * 30

# 请在下面完成要求的功能
#*********begin*********#
class REC
  def init(len, wid)
    @len = len
    @wid = wid
  end

  def area
    @len * @wid
  end
end

class TRI
  def init(bot, high)
    @bot = bot
    @high = high
  end
  def area
    (@bot * @high).to_f/2
  end

end

def cal_area(graph)
  graph.area
end

rec = REC.new
tri = TRI.new

rec.init(rectangle_len, rectangle_wid)
tri.init(triangle_bottom, triangle_high)

puts cal_area(rec)
puts cal_area(tri)

#********* end *********#

