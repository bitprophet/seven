selection = rand(10)
prompt = "Your guess? "
print prompt
print "Nope!\n#{prompt}" while gets.strip.to_i != selection
puts "YAY"
