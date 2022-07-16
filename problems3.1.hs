import Data.Char

---Maps

toLowerSt :: String -> String
toLowerSt [] = []
toLowerSt (c:cs) = toLower c : toLowerSt cs

toLowerCons :: Char -> Char
toLowerCons = undefined

toLowerConsSt = undefined

---Filters

onlyLetters :: String -> String
onlyLetters [] = []
onlyLetters (c:cs) | isLetter c  = c : onlyLetters cs
                   | otherwise   =     onlyLetters cs

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