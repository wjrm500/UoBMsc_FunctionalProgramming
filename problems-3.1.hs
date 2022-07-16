import Data.Char

---Maps

toLowerSt :: String -> String
toLowerSt = map toLower

toLowerCons :: Char -> Char
toLowerCons c
      | elem (toLower c) ['a', 'e', 'i', 'o', 'u'] = c
      | otherwise = toLower c

toLowerConsSt :: String -> String
toLowerConsSt = map toLowerCons

---Filters

onlyLetters :: String -> String
onlyLetters [] = []
onlyLetters (c:cs) | isLetter c  = c : onlyLetters cs
                   | otherwise   =     onlyLetters cs

onlyLetters' :: String -> String
onlyLetters' = filter isLetter

onlyNumsOrLetters = undefined

onlyLettersToLower1 st = undefined

onlyLettersToLower2 st = undefined

---Zips

firstNames :: [String]
firstNames = ["Adam","Brigitte","Charlie","Dora"]

secondNames :: [String]
secondNames = ["Ashe","Brown","Cook","De Santis"]

wholeNames = zip firstNames secondNames

countNames = undefined

wholeNames2 = zipWith (++) firstNames secondNames
              


rollCall :: [String]
rollCall = zipWith call xs firstNames
           where call = undefined
                 xs   = undefined