module Data.Author exposing
    ( Author
    , decoder
    )

import Json.Decode exposing (..)
import Json.Encode exposing (..)


type alias Author =
    { name : String
    , url : Maybe String
    , photo : Maybe String
    }


decoder : Decoder Author
decoder =
    map3 Company
        (field "name" Json.Decode.string)
        (field "url" Json.Decode.string)
        (field "photo" Json.Decode.string)
