require 'logger'
input_value = gets.chomp
logger = Logger.new('step3/str_handle.log')
logger.formatter = proc { |severity, datetime, progname, msg|
  "#{msg}\n"
}

class StrHandler
  def valid_str_length(string = "")
    if string.length < 5
      raise ArgumentError, "Too Short!"
    elsif string.length > 20
      raise ArgumentError, "Too Long!"
    end

    string
  end
end

# 请在上一小节的基础上
# 在下面完成要求的功能
# 可能使用到的方法：
#   字符串长度：str.length
#   字符串清空：str.clear
#*********begin*********#

class Connection
  attr :instrumenter
      def log(input_value)
        @instrumenter = StrHandler.new
        @instrumenter.valid_str_length(input_value)

      rescue Exception => e
        #message = "#{e.class.name}: #{e.message}: #{sql}"
        message = "#{e.message}"
        # 转译异常
        exception = translate_exception(e, message)
        # 设置转译后异常的 backtrace
        exception.set_backtrace e.backtrace
        raise exception
      end
  def translate_exception(e, message)
    # 覆盖原异常类
    message = "String NotValid: #{message}"
    StatementInvalidError.new(message)
  end
end
# 定义异常类
class StatementInvalidError < StandardError
end

con = Connection.new

begin
  con.log(input_value)
  #Connection.log(input_value)
rescue StatementInvalidError => e
  logger.debug(e.message)
end


#********* end *********#

puts "Test - " * 8
log_file = File.new("step3/str_handle.log", "r")
log_file.readlines[1..-1].each do |log_line|
  puts log_line
  puts "-" * 20
end
