extremosPares :: (Int, Int) -> (Int, Int) -> (Int, Int) -> (Int, Int)
extremosPares (a, b) (c, d) (e, f) = (minimum [a, b, c, d, e, f], maximum [a, b, c, d, e, f])
