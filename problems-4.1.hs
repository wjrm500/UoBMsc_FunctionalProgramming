import Data.Char

----List Comprehension

toLowerSt :: String -> String
toLowerSt [] = []
toLowerSt (c:cs) = toLower c : toLowerSt cs


onlyLetters :: String -> String
onlyLetters [] = []
onlyLetters (c:cs) | isLetter c  = c : onlyLetters cs
                   | otherwise   =     onlyLetters cs

onlyNumsOrLetters :: String -> String
onlyNumsOrLetters = undefined

onlyLettersToLower :: String -> String
onlyLettersToLower = undefined