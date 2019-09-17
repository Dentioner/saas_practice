
while true
  print "请输入学员成绩："
  score = gets.chomp.to_i
  break if score > 100

  # 请在下面完成要求的功能
  #*********begin*********#
  case score
  when 90..100
    puts "优"
  when 80..89
    puts "良"
  when 60..79
    puts "中"
  when 0..59
    puts "差"
  else
    puts "错误!"
  end





  #********* end *********#
end
