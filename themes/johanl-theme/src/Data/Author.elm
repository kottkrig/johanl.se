module Data.Author exposing
    ( Author
    , decoder
    )

import Json.Decode exposing (..)
import Json.Encode exposing (..)


type alias Author =
    { name : String
    , url : String
    , photo : String
    }


decoder : Decoder Author
decoder =
    map3 Author
        (field "name" Json.Decode.string)
        (field "url" Json.Decode.string)
        (field "photo" Json.Decode.string)
