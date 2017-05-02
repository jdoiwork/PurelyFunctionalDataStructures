suffixes :: [a] -> [[a]]
suffixes [] = [[]]
suffixes xs = xs : (suffixes $ tail xs)
