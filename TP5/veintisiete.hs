multiplos :: (Int, Int, Int) -> String
multiplos (a, b, c)
 | (a == b) && (a `mod` c == 0) = show a
 | (a == b) = ""
 | (a /= b) && (a `mod` c == 0) = show a ++ " " ++ multiplos ((a + 1), b, c)
 | otherwise = multiplos ((a + 1), b, c)
