module Main where
import System.IO


main :: IO ()
main = do
  let max_val = 0
  contents <- readFile "1.txt"
  let words_list = words contents
  let mm = map readInt words_list
  print max_val


readInt :: String -> Int
readInt = read
