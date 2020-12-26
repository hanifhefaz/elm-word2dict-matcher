module ExampleTwo exposing (main)

import Dict exposing (..)
import Html exposing (..)
import Html.Attributes exposing (..)
import Word2DictMatcher exposing (..)


data : List String
data =
    [ "Hamid is a very poor man!"
    , "Do you like to play football?"
    , "I am not sure, if there is still time to do it."
    , "I love playing volleyball."
    , "How about having some rest?"
    ]


searchString : List String
searchString =
    [ "Is there anyone who would like to play with me?" ]


searchDict =
    Word2DictMatcher.wordsDict searchString


dataDict =
    data |> Word2DictMatcher.sentenceHistograms


main =
    div [ style "text-align" "center" ]
        [ h2 [ style "background-color" "#8B0000", style "border" "2px solid", style "color" "white" ] [ text "Welcome to our chatbot!" ]
        , h1 [ style "background-color" "orange", style "border" "2px solid", style "color" "white" ] [ text "This site is under work!" ]
        , div [ style "background-color" "dodgerblue", style "border" "1px solid", style "width" "50%", style "margin" "auto" ]
            [ case findRelevantDict searchDict dataDict of
                Nothing ->
                    text "Sorry, there is no words in the bag :)"

                Just bestDict ->
                    bestDict
                        |> Dict.toList
                        --make the dict a list so that we can sort
                        |> List.sortBy Tuple.second
                        --sort on wordNo
                        |> List.map Tuple.first
                        -- Extract just the word
                        |> String.join " "
                        -- Join the list of words into a string seperating it by space
                        |> text

            -- give the resulting string to Html.text function
            ]
        ]
