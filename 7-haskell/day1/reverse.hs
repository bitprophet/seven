module Main where

myappend :: (Integer, [Integer]) -> [Integer]
myappend (x, []) = [x]
myappend (x, l)
    | length l == 1 = (head l):[x]
    | otherwise = (head l):myappend (x, tail l)

myreverse :: [Integer] -> [Integer]
myreverse [] = []
myreverse (h:t) = myappend (h, myreverse t)
