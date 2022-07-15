--Part 1

isEven :: Int -> Bool
isEven n = if (n `mod` 2 == 0)
           then True
           else False

square n = n * n

squareEven1 :: Int -> Int
squareEven1 n = undefined

squareEven2 :: Int -> Int
squareEven2 = undefined

--Part 2

myOdd :: Int -> Bool
myOdd n | (n `mod` 2 == 0) = False
        | otherwise        = True

grade :: Int -> String
grade n | n < 0 = "Marks cannot be negative"
        | n < 40 = "Fail"
        | n < 50 = "Low Pass"
        | n < 60 = undefined

--Part 3

factorial :: Int -> Int 
factorial n 
  | n <= 1 = 1 
  | otherwise = n * factorial (n-1)

triangle :: Int -> Int
triangle n = undefined

total :: [Int] -> Int 
total xs | (xs == []) = 0
         | otherwise = head xs + total (tail xs)

multiple :: [Int] -> Int
multiple = undefined 

triangle' :: Int -> Int
triangle' n = total [1..n]

factorial' :: Int -> Int
factorial' = undefined

euclid :: Int -> Int -> Int
euclid x y = undefined

-- Part 4

gcd5 = euclid 5

facDiv :: Int -> Int -> Int 
facDiv m n | (m > n) = (factorial m) `div` (factorial n)
           | (m < n) = (factorial n) `div` (factorial m)
           | otherwise = 1

facDiv7 = undefined

facTri :: Bool -> Int -> Int
facTri b n | b = factorial n
           | otherwise = triangle n

facEvenTriOdd = undefined
