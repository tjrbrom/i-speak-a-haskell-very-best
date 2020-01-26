
repl' :: (Integral a) => a -> a -> [a]

repl' x y = if(y <= 1) 
	    then [x] 
	    else [x] ++ (repl' x (y-1))

take' :: (Integral i, Ord a) => i -> [a] -> [a]

take' n xs | n <= 0 = []
take' n xs = case xs of [] -> []
                        (x:xs) -> x : take' (n-1) xs

zip' :: [a] -> [b] -> [(a, b)]

zip' [] _ = []
zip' _ [] = []
zip' (x:xs) (y:ys) = (x,y) : zip' xs ys

