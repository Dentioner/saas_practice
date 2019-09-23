file_input = gets

# 请在下面完成要求的功能
#*********begin*********#


f1 = File.new("testfile", "a+")

a = f1.readlines
line = a[0]
line2 = a[2]
print line
print line2
f1.write(file_input)
f1.close



#********* end *********#

f = File.new("testfile")
new_line = f.readlines[-1]
puts new_line
f.close
