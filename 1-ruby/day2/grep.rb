open(ARGV[1]).readlines.each_with_index do |line, index|
  line =~ /#{ARGV[0]}/ && puts("#{index+1}: #{line}")
end
