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
Grid save := method(path,
    file := File clone openForUpdating(path)
    self grid foreach(x,
        joined := x join(" ")
        file write("#{joined}\n" interpolate)
    )
)
Grid load := method(path,
    file := File openForReading(path)
    file readLines foreach(y, row,
        row split foreach(x, value,
            # get/set start at 1
            x = x + 1
            y = y + 1
            "set(#{x}, #{y})" interpolate println
            self set(x, y, value)
        )
    )
)

myGrid := Grid clone
myGrid dim(2, 5)
myGrid grid println

myGrid set(1, 2, "lol")
myGrid grid println
myGrid get(1, 2) println

myGrid save("/tmp/lol")

newGrid := Grid clone
newGrid dim(2, 5)
newGrid grid println
newGrid load("/tmp/lol")
newGrid grid println
