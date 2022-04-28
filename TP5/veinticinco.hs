alinear :: String -> String -> String -> Int -> String
alinear a b c x = a ++ hacerEspacios (((x-length b)`div`2) - length a) ++ b ++ hacerEspacios (((x-length b)`div`2) - length c) ++ c
 where
  hacerEspacios :: Int -> String
  hacerEspacios n 
   | n == 0 = "" 
   | otherwise = " " ++ hacerEspacios (n-1)
 
