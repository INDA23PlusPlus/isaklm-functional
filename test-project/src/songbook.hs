import Data.List
import System.IO

read_int :: String -> Int
read_int x = read x

main = do
  first_line <- getLine
  let strings1 = words first_line
  let counts = map read_int strings1
  let max_time = head counts * 60
  let song_count = last counts

  second_line <- getLine
  let strings2 = words second_line
  let times = map read_int strings2

  let sorted_list = sort times

  let max_songs = last [x | x <- [1..song_count], sum(take x sorted_list) <= max_time]

  print(sum(take max_songs sorted_list))