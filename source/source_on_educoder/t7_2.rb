require 'logger'
input_value = gets.chomp
logger = Logger.new('step2/str_handle.log')
logger.formatter = proc { |severity, datetime, progname, msg|
  "#{msg}\n"
}

# 请在上一小节的基础上
# 在下面完成要求的功能
# 可能使用到的方法：
#   字符串长度：str.length
#   字符串清空：str.clear
#*********begin*********#
begin
  length = input_value.length
  raise ArgumentError if length < 5 || length > 20

rescue ArgumentError
begin
  if length < 5
    a = "Too Short!"
  else
    a =  "Too long!"
  end
end



ensure
  logger.debug(a)

end




#********* end *********#

puts "Test - " * 8
log_file = File.new("step2/str_handle.log", "r")
log_file.readlines[1..-1].each do |log_line|
  puts log_line
end

