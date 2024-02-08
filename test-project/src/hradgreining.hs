import Data.List
import System.IO

main = do
  line <- getLine
  if length [ x | x <- [0..length line], take 3 (drop x line) == "COV"] > 0
    then putStrLn $ id "Veikur!"
    else putStrLn $ id "Ekki veikur!"