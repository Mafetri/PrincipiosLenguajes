hacerEspacios :: Int -> String
hacerEspacios n 
 | n == 0 = "" 
 | otherwise = " " ++ hacerEspacios (n-1)
