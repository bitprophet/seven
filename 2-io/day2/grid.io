# Dumb thing to get Number range behavior to work
Range;

Grid := Object clone
Grid dim := method(x, y,
    self grid := list()
    1 to(x) foreach(i,
        inner := list()
        inner setSize(y)
        grid append(inner)
    )
)
Grid set := method(x, y, value,
    inner := self grid at(x)
    inner atPut(y, value)
    self grid atPut(x, inner)
)
Grid get := method(x, y,
    self grid at(x) at(y)
)

Grid dim(2, 5)
Grid grid println

Grid set(1, 2, "lol")
Grid grid println
Grid get(1, 2) println
