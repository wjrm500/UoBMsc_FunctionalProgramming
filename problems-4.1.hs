import Data.Char

----List Comprehension

toLowerSt :: String -> String
toLowerSt [] = []
toLowerSt (c:cs) = toLower c : toLowerSt cs

toLowerSt' :: String -> String
toLowerSt' s = [toLower n | n <- s]

onlyLetters :: String -> String
onlyLetters [] = []
onlyLetters (c:cs) | isLetter c  = c : onlyLetters cs
                   | otherwise   =     onlyLetters cs

onlyLetters' :: String -> String
onlyLetters' s = [n | n <- s, isLetter n]

onlyNumsOrLetters :: String -> String
onlyNumsOrLetters s = [n | n <- s, isDigit n || isLetter n]

onlyLettersToLower :: String -> String
onlyLettersToLower s = [toLowerIfLetter n | n <- s] where
    toLowerIfLetter c
        | isLetter c = toLower c
        | otherwise = c