numbers = 1.upto 16

buffer = []
numbers.each do |number|
  buffer << number
  if buffer.size == 4
    p buffer
    buffer = []
  end
end

puts "#" * 70

numbers.each_slice 4 do |slice|
  p slice
end
