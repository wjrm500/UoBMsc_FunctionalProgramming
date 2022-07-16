import Data.Char

---Exercise 1

toUpperSt :: String -> String
toUpperSt [] = []
toUpperSt (c:cs) = toUpper c : toUpperSt cs

deleteDigits :: String -> String
deleteDigits [] = []
deleteDigits (c:cs)
    | isDigit c = deleteDigits cs
    | otherwise = c : deleteDigits cs

leetSpeak :: String -> String
leetSpeak = undefined

--Exercise 2

factors2 :: Int -> [Int]
factors2 0 = []
factors2 n | (n `mod` 2 == 0) =  2 : factors2 (n `div` 2)
           | otherwise        = [n]

factorsFrom :: Int -> Int -> [Int]
factorsFrom _ 0 = []
factorsFrom m n | n == m           = undefined
                | (n `mod` m == 0) = undefined
                | otherwise        = undefined

primeFactors = undefined