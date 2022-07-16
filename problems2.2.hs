import qualified Data.Text as T

data Duck = Duck String Int 
  deriving Show

donald :: Duck
donald = Duck "Donald" 6 

daisy :: Duck
daisy = Duck "Daisy" 5 

huey :: Duck
huey = Duck "Huey" 2 

dewey :: Duck
dewey = Duck "Dewey" 2

duckFamily :: [Duck]
duckFamily = [donald,daisy,huey,dewey]

birthday :: Duck -> Duck
birthday d = Duck name age
    where name = init (tail (T.unpack (T.splitOn (T.pack " ") (T.pack (show d)) !! 1)))
          age  = (read (T.unpack (T.splitOn (T.pack " ") (T.pack (show d)) !! 2)) :: Int) + 1

tall = undefined