-- Custom module exporting everything
module Greet exposing (..)
import String

greet : String -> String

greet msg =
    "hello " ++ msg