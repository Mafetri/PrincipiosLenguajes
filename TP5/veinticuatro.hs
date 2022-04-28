separador :: Int -> String
separador x
 | x `div` 10 == 0 = repetidor x x
 | otherwise = separador (x `div` 10) ++ "\n" ++ repetidor (x `mod` 10) (x `mod` 10)
 where
  repetidor :: Int -> Int -> String
  repetidor x i
   | i == 0 = ""
   | otherwise = show x ++ repetidor x (i-1)
