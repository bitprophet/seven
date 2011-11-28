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
Grid dim(2, 5)
Grid grid println
