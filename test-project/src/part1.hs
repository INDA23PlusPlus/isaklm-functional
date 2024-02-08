import Data.List
import System.IO

fib 0 = 0
fib 1 = 1
fib n = fib(n - 1) + fib(n - 2)

list_of_words = [ "this", "is", "a", "list", "of", "words"]
shorter_words word = length [ x | x <- list_of_words, length x < length word ]
median_word = head [ x | x <- list_of_words, shorter_words x == length list_of_words `div` 2 ]

main = do
    print(fib 10)
    print(reverse list_of_words)
    print(median_word)