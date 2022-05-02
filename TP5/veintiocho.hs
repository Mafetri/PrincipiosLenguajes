intervalo :: (Int, Int) -> String
intervalo (x,y) = cuadrados y x 1
 where
  cuadrados :: Int -> Int -> Int -> String
  cuadrados max x pos
   | (x == max) && esCuadradoPerfecto (fromIntegral x) = show x ++ " " ++ show pos ++ "\n"
   | (x == max) = ""
   | esCuadradoPerfecto (fromIntegral x) = show x ++ " " ++ show pos ++ "\n" ++ cuadrados max (x+1) (pos+1)
   | otherwise = cuadrados max (x+1) (pos+1)
 
esCuadradoPerfecto :: Float -> Bool
esCuadradoPerfecto n = ((fromIntegral(truncate raiz) - raiz) == 0)
 where
  raiz = sqrt n

