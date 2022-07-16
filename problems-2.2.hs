-- import qualified Data.Text as T

data Duck = Duck String Int Float | Duckling String Int Float
  deriving Show

donald :: Duck
donald = Duck "Donald" 6 1.1

daisy :: Duck
daisy = Duck "Daisy" 5 0.5

huey :: Duck
huey = Duckling "Huey" 2 1.2

dewey :: Duck
dewey = Duckling "Dewey" 1 0.9

duckFamily :: [Duck]
duckFamily = [donald,daisy,huey,dewey]

-- birthday :: Duck -> Duck
-- birthday d = Duck name age
--     where name = init (tail (T.unpack (T.splitOn (T.pack " ") (T.pack (show d)) !! 1)))
--           age  = (read (T.unpack (T.splitOn (T.pack " ") (T.pack (show d)) !! 2)) :: Int) + 1

birthday :: Duck -> Duck
birthday (Duck n a h) = Duck n (a + 1) h
birthday (Duckling n a h)
    | a < 2 = Duckling n (a + 1) h
    | otherwise = Duck n (a + 1) h

tall :: Duck -> Bool
tall (Duck n a h) = h > 0.6
tall (Duckling n a h) = h > 0.25