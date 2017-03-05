import Html exposing (..)
import Html.Events exposing (onClick, onInput)
import Html.Attributes exposing (..)
import String
import Greet
import Debug

main =
  Html.beginnerProgram { model = model, view = view, update = update }

-- MODEL

type alias Model =
  { content: String,
    count: Int,
    password: String,
    passwordAgain: String
  }
model : Model
model = 
  { content = "hello world"
  , count = 0
  , password = ""
  , passwordAgain = ""
  }


-- UPDATE


type Msg 
  = Increment
  | Decrement
  | Change String
  | Password String
  | PasswordAgain String

update : Msg -> Model -> Model
update msg model =
  case msg of
    Increment ->
      Debug.log "Loggin!"
      { model | count = model.count + 1 }

    Decrement ->
      { model | count = model.count - 1 }

    Change newContent -> 
      { model | content = newContent }

    Password newPassword -> 
      { model | password = newPassword }

    PasswordAgain newPasswordAgain -> 
      { model | passwordAgain = newPasswordAgain }


-- VIEW


view : Model -> Html Msg
view model =
  div []
    [ button [ onClick Decrement ] [ text "-" ]
    , div [] [ text (toString (.count model)) ]
    , button [ onClick Increment ] [ text "+" ]
    , div [] [ text (Greet.greet "paper") ] 
    , div [] [ text (String.reverse model.content) ]
    , div [] [ text ("Reduced the list [1,2,3,4] to " ++ (toString (List.foldr (\a b -> a + b) 0 [1, 2, 3, 4])))]
    , input [ placeholder "Text to reverse", onInput Change ] []
    , input [ type_ "password", placeholder "Password", onInput Password ] []
    , input [ type_ "password", placeholder "Re-enter Password", onInput PasswordAgain ] []
    , viewValidation model
    ]

viewValidation : Model -> Html Msg
viewValidation model =
  let 
    (color, message) =
      if model.password == model.passwordAgain then
        ("green", "OK")
      else
        ("red", "Passwords do not match")
  in 
    div [ style [("color", color)] ] [ text message ]
