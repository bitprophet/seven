array := list(
    list(1, 2, 3),
    list(7, 7, 7))

array println

tally := 0
array foreach(x,
    x foreach(y,
        tally = tally + y))

tally println
