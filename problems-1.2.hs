--Lists

halving :: Int -> [Int]
halving n | n == 0 = []
          | odd n  = n : halving (n-1)
          | even n = n : halving (div n 2)

collatz :: Int -> [Int]
collatz n
    | n == 1 = [n]
    | even n = n : collatz (div n 2)
    | otherwise  = n : collatz ((n * 3) + 1)

colLength :: Int -> Int
colLength n = length(collatz n)

-- Pattern Matching

maxList :: [Int] -> Int
maxList [] = 0
maxList [x] = x
maxList (x:xs) | x > maxList xs = x | otherwise = maxList xs 


allDucks :: [String] -> Bool
allDucks [] = False
allDucks (x:xs) = x == "duck" && (null xs || allDucks xs)

duckDuckGoose :: [String] -> Bool
duckDuckGoose [] = False
duckDuckGoose ["duck", "goose"] = True
duckDuckGoose (x:xs) = x == "duck" && duckDuckGoose xs

--Pairs

ducks :: [(String,Int)]
ducks = [("Donald",6),("Daisy",5),("Huey",2),("Louie",2),("Dewey",2)]

noDDucks :: [(String,Int)] -> [(String,Int)]
noDDucks [] = []
noDDucks ((name,age):xs)
    | head name /= 'D' = (name,age) : noDDucks xs
    | otherwise = noDDucks xs

noDDucks' :: [(String,Int)] -> [String]
noDDucks' [] = []
noDDucks' ((name,age):xs)
    | head name /= 'D' = name : noDDucks' xs
    | otherwise = noDDucks' xs

youngOrShort = undefined

describeDucks = undefined