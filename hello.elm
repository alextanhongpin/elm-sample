import Html exposing (beginnerProgram, div, button, li, text, ul)
import Html.Attributes exposing(class)
import Html.Events exposing (onClick)
import String

sayHello: String -> String
sayHello name =
    String.append "Hello " name

name = sayHello "Jo"
main = beginnerProgram { model = 0, view = view, update = update }

view model = div [] [
    ul[class "Hello"]
    [ 
      li [] [text "First item"],
      li [] [text (toString model) ]
    ],
    text name,
    button [ onClick Increment ] [ text "I'm a button!" ]
  ]

type Msg = Increment

update msg model =
    case msg of 
        Increment ->
            model + 1