
quicksort' :: (Ord a) => [a] -> [a]

quicksort' [] = []
quicksort' (x:xs) = 
				let smallers = quicksort'[i | i <- xs, i <= x];
					  biggers = quicksort'[i | i <- xs, i > x]
				in  smallers ++ [x] ++ biggers
