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

onlyNumsOrLetters :: String -> String
onlyNumsOrLetters = filter isNumOrLetter
      where isNumOrLetter c = isDigit c || isLetter c

onlyLettersToLower1 :: String -> String
onlyLettersToLower1 st = map toLower (filter isLetter st)

onlyLettersToLower2 :: String -> String
onlyLettersToLower2 st = filter isLetter (map toLower st)

---Zips

firstNames :: [String]
firstNames = ["Adam","Brigitte","Charlie","Dora"]

secondNames :: [String]
secondNames = ["Ashe","Brown","Cook","De Santis"]

wholeNames :: [(String, String)]
wholeNames = zip firstNames secondNames

countNames = undefined

wholeNames2 = zipWith (++) firstNames secondNames
              


rollCall :: [String]
rollCall = zipWith call xs firstNames
           where call = undefined
                 xs   = undefined