module Data.Entry exposing
    ( Entry
    , decoder
    )

import Data.Author
import Json.Decode exposing (..)


type Property
    = LikeOf
    | InReplyTo
    | RepostOf
    | MentionOf
    | BookmarkOf


type alias Entry =
    { url : String
    , author : Data.Author.Author

    --, property : Property
    }


decoder : Decoder Entry
decoder =
    map2 Entry
        (field "url" Json.Decode.string)
        (field "author" Data.Author.decoder)
