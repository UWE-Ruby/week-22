
puts ARGV

# An example of dealing with arguments in pairs

# Remove the dash `-` from all the even parameters
# 
# @example ruby lib/command.rb -key value -key2 value2
# 
#     [ 'key', 'value', 'key2', 'value2' ] 
# 
parameters = ARGV.each_with_index.map {|arg,index| (index % 2 == 0 and arg.start_with?("-")) ? arg[1..-1] : arg }

puts Hash[*parameters]