freeze_signal = gets.chomp.to_i
document = "A Simple Document"
unless freeze_signal.zero?
  document.freeze
end

# 请在下面完成要求的功能
#*********begin*********#


if document.frozen?
  document = "I'm unfreezed"
else
  document += " I'm freezed"
end


#********* end *********#

puts document
unless freeze_signal.zero?
  puts document.frozen?
end

