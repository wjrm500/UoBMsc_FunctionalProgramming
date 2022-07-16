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
birthday = undefined

tall = undefined