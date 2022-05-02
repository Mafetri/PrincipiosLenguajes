justificarCentro :: Int -> String -> String
justificarCentro n st = hacerEspacios ((n-length st)`div`2) ++ st ++ hacerEspacios((n-length st)`div`2)

hacerEspacios :: Int -> String
hacerEspacios n 
 | n == 0 = "" 
 | otherwise = " " ++ hacerEspacios (n-1)
