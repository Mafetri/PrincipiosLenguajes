bisiesto :: Int -> Int -> String
bisiesto n m
 | m == n = show n ++ " " ++ esBisiesto n ++ "\n"
 | otherwise = show n ++ " " ++ esBisiesto n ++ "\n" ++ bisiesto (n+1) m
 where
  esBisiesto :: Int -> String
  esBisiesto m
   | (m `mod` 100 == 0) && (m `mod` 400 == 0) = "bisiesto"
   | (m `mod` 100 /= 0) && (m `mod` 4 == 0) = "bisiesto"
   | otherwise = "no bisiesto"
