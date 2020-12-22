-- module Main where
import System.IO
import Data.Char
import Data.Maybe
import Data.List
import Text.Printf


main :: IO ()
main = do
  contents <- readFile "1.txt"
  let wordList = words contents
  let intList = map readInt' wordList
  -- let maxVal = max' intList
  let pair = getPair' $ sort intList
  let prod = (\(x, y) -> x * y) pair
  print prod


readInt' :: String -> Int
readInt' = read

max' :: [Int] -> Int
max' (x:xs) = foldl (\acc curr -> if curr > acc then curr else acc) x xs

getPair' :: [Int] -> (Int, Int)
getPair' (x:xs) = if matchesSum'(x, last xs, 2020) then (x, last xs) else (x, last xs)

matchesSum' :: (Int, Int, Int) -> Bool
matchesSum' (x, y, sum) = x + y == sum
