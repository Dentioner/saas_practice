stud_iid_1  = gets.chomp.to_i
stud_name_1 = gets.chomp
stud_iid_2  = gets.chomp.to_i
stud_name_2 = gets.chomp

# 请在下面完成要求的功能
#*********begin*********#
class Student
  attr_reader :iid, :name, :info

  def iid=(iid)
    @iid = iid
  end

  def name=(name)
    @name = name
  end

  def info
    @info = "IID: #{@iid}, Name: #{@name}"
  end
end

stu1 = Student.new
stu2 = Student.new

stu1.iid = stud_iid_1
stu1.name = stud_name_1
stu2.iid = stud_iid_2
stu2.name = stud_name_2

puts stu1.info
puts stu2.info



#********* end *********#
