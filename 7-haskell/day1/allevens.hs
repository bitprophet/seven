module Main where

allEvens :: [Integer] -> [Integer]
allEvens x = [y | y <- x, even y]
