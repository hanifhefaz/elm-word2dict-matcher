module Example exposing (main)
import Html exposing (..)
import Dict exposing (..)

import Word2DictMatcher exposing (..)

data : List String
data =
    [ "He watched the dancing piglets with panda bear tummies in the swimming pool"
    , "I purchased a baby clown from the Russian terrorist black market."
    , "He was the type of guy who liked Christmas lights on his house in the middle of July."
    , "If any cop asks you where you were, just say you were visiting Kansas."
    , "Happiness can be found in the depths of chocolate pudding."
    ]
    
searchString : List String
searchString =
    [ "He went back to the house to see what had been recorded and was shocked at what he saw." ]
    
searchDict =
    Word2DictMatcher.wordsDict searchString
        
dataDict =
    data |> Word2DictMatcher.sentenceHistograms
    
main = 
       case Word2DictMatcher.findRelevantDict searchDict dataDict of 
       Nothing ->
           text "Sorry, there is no words in the bag :)"
       Just bestDict ->
           bestDict 
               |> Debug.toString
               |> text