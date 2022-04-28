minMax :: (Int, Int) -> (Int, Int)
minMax (x, y)
 | x < y = (x, y)
 | otherwise = (y, x) 
