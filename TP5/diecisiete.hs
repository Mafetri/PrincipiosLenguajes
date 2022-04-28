import Data.Char
factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial (n-1)

factorialTable :: Int -> Int -> String
factorialTable m n
 | m == n = show (factorial n)
 | otherwise = show (factorial m) ++ " " ++ factorialTable (m-1) n
