# Preserve original / implementation
Number divide_by := Number getSlot("/")

"Before redefine, 5 / 6: #{5 /6}, 5 / 0: #{5 / 0}" interpolate println

# Redefine w/ customizations
Number / := method(denominator,
    if(denominator == 0,
        0,
        self divide_by(denominator)))

"After redefine, 5 / 6: #{5 /6}, 5 / 0: #{5 / 0}" interpolate println
