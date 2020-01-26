
repl' :: (Integral a) => a -> a -> [a]

repl' x y = if(y <= 1) 
			then [x] 
			else [x] ++ (repl' x (y-1))

