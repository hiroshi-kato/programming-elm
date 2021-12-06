module Picshare exposing (main)

-- (..)でHtmlのすべてのモジュールをインポートする

import Html exposing (..)
import Html.Attributes exposing (class, src)


viewDetailedPhoto : String -> String -> Html msg
viewDetailedPhoto url caption =
    div [ class "detailed-photo" ]
        [ img [ src url ] []
        , div [ class "photo-info" ]
            [ h2 [ class "caption" ] [ text caption ] ]
        ]


baseUrl : String
baseUrl =
    "https://programming-elm.com/"


main : Html msg
main =
    div []
        [ div [ class "header" ]
            [ h1 [] [ text "Picsahre" ] ]
        , div [ class "content-flow" ]
            [ viewDetailedPhoto (baseUrl ++ "1.jpg") "Surfing"
            , viewDetailedPhoto (baseUrl ++ "2.jpg") "The Fox"
            , viewDetailedPhoto (baseUrl ++ "3.jpg") "Evening"
            ]
        ]
