module Main exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)


type alias Artform =
    { name : String
    , links : List Link
    }


type alias Link =
    { href : String
    , text : String
    }


main : Html msg
main =
    div [ style [ ( "margin", "20px" ) ] ]
        [ h1 [] [ text "hello" ]
        , span [] [ text "this is the homepage of maarten schumacher" ]
        , br [] []
        , span [] [ text "sometimes i make" ]
        , ul [] <| List.map artformView artforms
        ]


artformView : Artform -> Html msg
artformView artform =
    let
        link l =
            li []
                [ a
                    [ href l.href, target "_blank" ]
                    [ text l.text ]
                ]
    in
        p []
            [ li []
                [ text artform.name
                , ul [] <| List.map link artform.links
                ]
            ]


artforms : List Artform
artforms =
    [ { name = "music"
      , links =
            [ { href = "https://www.youtube.com/watch?v=K-PKNj23OVE", text = "short piece for harp" }
            , { href = "https://www.youtube.com/watch?v=PBU7hz5CBLI", text = "disciple, sacrifice, and community spirit" }
            ]
      }
    , { name = "interactive"
      , links =
            [ { href = "http://maartenschumacher.com/memory/", text = "memory" }
            , { href = "http://maartenschumacher.com/bornagain/", text = "born again" }
            ]
      }
    , { name = "performance"
      , links = [ { href = "https://maartenschumacher.wistia.com/medias/erl0j02yrr", text = "what you means to me" } ]
      }
    , { name = "writing"
      , links = [ { href = "https://maartenschumacher.wordpress.com", text = "politics of the intimate" } ]
      }
    , { name = "software"
      , links = [ { href = "https://github.com/maartenschumacher", text = "github" } ]
      }
    ]
