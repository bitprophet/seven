module Main where

combos :: [[Char]] -> [([Char], [Char])]
combos choices = [(x, y) | x <- choices, y <- choices, x < y]
