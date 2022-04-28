maxOcurr :: Int -> Int -> (Int, Int)
maxOcurr x y
 | x > y = ocurr x y
 | otherwise = ocurr y x
  where
   ocurr :: Int -> Int -> (Int, Int)
   ocurr x y
    | x == y = (x, 2)
    | otherwise = (x, 1)

maxOcurrT :: Int -> Int -> Int -> (Int, Int)
maxOcurrT x y z
 | (x >= y) && (y >= z) = ocurr x y z
 | (y >= x) && (x >= z) = ocurr y x z
 | otherwise = ocurr z x y
  where
   ocurr :: Int -> Int -> Int -> (Int, Int)
   ocurr x y z
    | (x == y) && (y == z) = (x, 3)
    | (x == z) || (x == y) = (x, 2)
    | otherwise = (x, 1)

