--        Fibonacci          --
fibonacci:: Int -> Int
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci n  
 | n > 1 = fibonacci (n-2) + fibonacci (n-1)
 | otherwise = 0

--        Factorial          --
factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial (n-1)

-- 	  Sumatoria 	     --
sumatoria :: Int -> Int -> Int
sumatoria i n 
 | (i == 0) = 0
 | (i <= n) = (i^n) + sumatoria (i-1) n 

funcion :: Int -> Int -> Double
funcion x n = (fromIntegral (sumatoria n n)) / (fromIntegral (factorial x))
