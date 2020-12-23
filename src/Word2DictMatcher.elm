module Word2DictMatcher exposing
    ( findRelevantDict
    , wordsDict
    , sentenceHistograms
    )

{-|


# Result

@docs findRelevantDict


# Words Dictionary

@docs wordsDict


# Sentence Histograms

@docs sentenceHistograms

-}

import Dict exposing (..)
import Html exposing (..)


type alias Sentence =
    String


type alias Tokens =
    List String


type alias Histogram =
    Dict String Int


{-| This will make a dictionary from a sentence
-}
wordsDict : List String -> Dict String Int
wordsDict vocabulary =
    vocabulary
        |> List.concatMap String.words
        |> toHistogram


{-| Finds the sentences with the most occurances from a search string
Returns all the words from the matched sentence as a dictionary, which you can later convert to Html msg.
-}
findRelevantDict : Dict String Int -> List (Dict String Int) -> Maybe (Dict String Int)
findRelevantDict firstDict allDicts =
    List.foldl (score firstDict) ( 0, Nothing ) allDicts
        |> Tuple.second


score firstDict tempDict ( bestCount, maybeBestDictSoFar ) =
    let
        nWordsMatched =
            Dict.intersect firstDict tempDict
                |> Dict.size
    in
    case maybeBestDictSoFar of
        Nothing ->
            ( nWordsMatched, Just tempDict )

        Just bestDictSoFar ->
            if nWordsMatched > bestCount then
                ( nWordsMatched, Just tempDict )

            else if nWordsMatched == bestCount then
                if Dict.size bestDictSoFar > Dict.size tempDict then
                    ( nWordsMatched, Just tempDict )

                else
                    ( nWordsMatched, Just bestDictSoFar )

            else
                ( bestCount, Just bestDictSoFar )


tokenize : Sentence -> Tokens
tokenize =
    String.filter (\c -> c == ' ' || Char.isAlpha c)
        >> String.toLower
        >> String.words


toHistogram : Tokens -> Histogram
toHistogram =
    List.foldl
        (\key dict ->
            case Dict.get key dict of
                Nothing ->
                    Dict.insert key 1 dict

                Just count ->
                    Dict.insert key (count + 1) dict
        )
        Dict.empty


{-| This will make a dictionary from data and do some tokenization as well.
-}
sentenceHistograms : List Sentence -> List Histogram
sentenceHistograms =
    List.map (tokenize >> toHistogram)
