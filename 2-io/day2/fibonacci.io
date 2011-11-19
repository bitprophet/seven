fib := method(n,
    if(n > 2,
        fib(n - 1) + fib(n - 2),
        1
    )
)

sequenceLength := 25
for(n, 1, sequenceLength, fib(n) println)
