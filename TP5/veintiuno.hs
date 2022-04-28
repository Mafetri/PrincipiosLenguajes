ordenTriple :: (Int, Int, Int) -> (Int, Int, Int)
ordenTriple (a, b, c)  
 | (a <= b) && (b <= c) = (a, b, c)
 | (a > b) = ordenTriple(b, a, c)
 | (b > c) = ordenTriple(a, c, b) 