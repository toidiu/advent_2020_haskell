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
  let intList = map readInt wordList
  let maxVal = max' intList
  print maxVal


readInt :: String -> Int
readInt = read

max' :: [Int] -> Int
max' (x:xs) = foldl (\acc curr -> if curr > acc then curr else acc) x xs

