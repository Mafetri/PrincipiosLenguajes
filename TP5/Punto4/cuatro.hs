cuantosIguales :: Int -> Int -> Int -> Int
cuantosIguales a b c
	| (a == b) && (b == c) = 3
	| (a == b) || (b == c) || (a == c) = 2
	| otherwise = 1
