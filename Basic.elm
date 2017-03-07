module Basic exposing (..)

import Html exposing (text)

main =
  text "Hello World"


{-
  Anonymous Function
  * Example of an anonymous function
-}
\x -> x + 1
\x y -> x + y

{-
  Named Function
  * Example of a named function
-}

add1 : Int -> Int
add1 x =
  x + 1

add1 10
