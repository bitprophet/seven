# Definition
List avg := method(if(self size == 0,
    nil,
    if(self map(isKindOf(Number)) containsIdenticalTo(false),
        Exception raise("Can only average Numbers!"),
        self sum / self size)))

# Regular use
l := list(10, 55, 63, 2, 2, 7)
l println
l avg println

# Edge case: empty list
l2 := list()
l2 println
l2 avg println

# Edge case: non-numeric members
l3 := list(1, "two", 3, "four")
l3 println
l3 avg println
