header := method(text, "-- #{text} --" interpolate println)

header("Type strength")
# try() returns nil if no exception raised, so truth expr evals if there was an
# exception, false expr evals if no exception
if(try(1 + "1"), "Strongly typed", "Weakly typed") println
if(try(1 + "one"), "Still strongly typed", "REALLY weakly typed") println
"" println

header("Truthiness")
template := "#{tuple at(1)} is #{if(tuple at(0), \"true\", \"false\")}"
tests := list(list(0, "0"), list("", "empty string"), list(nil, "nil"))
tests foreach(tuple, template interpolate println)
"" println
