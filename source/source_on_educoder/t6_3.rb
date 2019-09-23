dir_name = gets.chomp.to_s

# 请在下面完成要求的功能
#*********begin*********#
Dir.mkdir(dir_name)
puts Dir.entries("./").join("\n")
Dir.delete(dir_name)



#********* end *********#

