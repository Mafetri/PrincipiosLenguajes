duplicar :: String -> Int -> String
duplicar s n
 | n == 0 = ""
 | otherwise = s ++ duplicar s (n-1)
