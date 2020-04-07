module WebMentions exposing (..)

-- Press buttons to increment and decrement a counter.
--
-- Read how it works:
--   https://guide.elm-lang.org/architecture/buttons.html
--

import Browser
import Data.Entry
import Html exposing (Html, button, div, text)
import Html.Attributes exposing (class)
import Html.Events exposing (onClick)
import Http
import Json.Decode



-- MAIN


main =
    Browser.element
        { init = init
        , update = update
        , subscriptions = subscriptions
        , view = view
        }



-- MODEL


type alias Flags =
    { currentUrl : String
    }


type Model
    = Failure
    | Loading
    | Success (List Data.Entry.Entry)


init : Flags -> ( Model, Cmd Msg )
init flags =
    ( Loading
    , Http.get
        { url = "https://webmention.io/api/mentions.jf2?target=https://johanl.se/2020/04/veckouppdatering-14/"
        , expect = Http.expectJson GotText (Json.Decode.field "children" (Json.Decode.list Data.Entry.decoder))
        }
    )



-- UPDATE


type Msg
    = GotText (Result Http.Error (List Data.Entry.Entry))


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        GotText result ->
            case result of
                Ok fullText ->
                    ( Success fullText, Cmd.none )

                Err _ ->
                    ( Failure, Cmd.none )



-- SUBSCRIPTIONS


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none



-- VIEW


view : Model -> Html Msg
view model =
    div [ class "text-xl font-sans", class "my-24", class "text-right" ]
        [ text "✍︎"
        , viewEntryList model
        ]


viewEntryList : Model -> Html Msg
viewEntryList model =
    case model of
        Failure ->
            div [] [ text "Failure" ]

        Loading ->
            div [] [ text "loading" ]

        Success entries ->
            div [ class "text-sm font-sans text-left" ] (List.map viewEntry entries)


viewEntry : Data.Entry.Entry -> Html Msg
viewEntry entry =
    div [] [ text entry.author.name ]
