import Html exposing (Html, beginnerProgram, Attribute, button, div, text)
import Html.Events exposing (onClick, onInput)
import Html.Attributes exposing (..)
import String

main =
  beginnerProgram { model = model, view = view, update = update }

-- MODEL

type alias Model =
  { content: String,
    count: Int
  }
model : Model
model = 
  { content = "hello world",
    count = 0
  }

-- UPDATE
type Msg = Increment | Decrement

update : Msg -> Model -> Model
update msg model =
  case msg of
    Increment ->
      { model | count = model.count + 1 }
    Decrement ->
      { model | count = model.count - 1 }

-- VIEW
view : Model -> Html Msg
view model =
  div []
    [ button [ onClick Decrement ] [ text "-" ]
    , div [] [ text (toString (.count model)) ]
    , button [ onClick Increment ] [ text "+" ]
    , div [] [ text (.content model) ]
    ]
