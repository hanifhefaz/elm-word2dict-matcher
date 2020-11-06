module Example exposing (tests)

import Data
import Dict exposing (..)
import Expect exposing (Expectation)
import Fuzz exposing (Fuzzer, int, list, string)
import Html exposing (..)
import Test exposing (..)
import Word2DictMatcher exposing (..)


dataDict =
    Data.data |> Word2DictMatcher.sentenceHistograms


tests : Test
tests =
    describe "Find Relevant Dictionary"
        [ test "one word match" <|
            \() ->
                let
                    searchString =
                        [ "return" ]

                    searchDict =
                        Word2DictMatcher.wordsDict searchString
                in
                Expect.equal [ ( "is", 1 ), ( "policy", 1 ), ( "return", 1 ), ( "the", 1 ), ( "what", 1 ) ]
                    (case Word2DictMatcher.findRelevantDict searchDict dataDict of
                        Nothing ->
                            searchDict |> Dict.toList

                        -- Give me back the search dict
                        Just bestDict ->
                            bestDict
                                |> Dict.toList
                     -- Give me the expected data
                    )
        , --skip <|
          test "two words match" <|
            \() ->
                let
                    searchString =
                        [ "take process" ]

                    searchDict =
                        Word2DictMatcher.wordsDict searchString
                in
                Expect.equal [ ( "a", 1 ), ( "does", 1 ), ( "how", 1 ), ( "it", 1 ), ( "long", 1 ), ( "process", 1 ), ( "return", 1 ), ( "take", 1 ), ( "to", 1 ) ]
                    (case Word2DictMatcher.findRelevantDict searchDict dataDict of
                        Nothing ->
                            searchDict |> Dict.toList

                        -- Give me back the search dict
                        Just bestDict ->
                            bestDict
                                |> Dict.toList
                     -- Give me the expected data
                    )
        , --skip <|
          test "three words match" <|
            \() ->
                let
                    searchString =
                        [ "how to contact to the company" ]

                    searchDict =
                        Word2DictMatcher.wordsDict searchString
                in
                Expect.equal [ ( "answered", 1 ), ( "company", 1 ), ( "contact", 1 ), ( "do", 1 ), ( "here", 1 ), ( "how", 1 ), ( "i", 1 ), ( "if", 1 ), ( "isnt", 1 ), ( "my", 1 ), ( "question", 1 ), ( "your", 1 ) ]
                    (case Word2DictMatcher.findRelevantDict searchDict dataDict of
                        Nothing ->
                            searchDict |> Dict.toList

                        -- Give me back the search dict
                        Just bestDict ->
                            bestDict
                                |> Dict.toList
                     -- Give me the expected data
                    )
        , --skip <|
          test "more than three words" <|
            \() ->
                let
                    searchString =
                        [ "what are the international taxes" ]

                    searchDict =
                        Word2DictMatcher.wordsDict searchString
                in
                Expect.equal [ ( "are", 1 ), ( "duties", 1 ), ( "etc", 1 ), ( "have", 1 ), ( "i", 1 ), ( "international", 1 ), ( "pay", 1 ), ( "taxes", 1 ), ( "that", 1 ), ( "the", 1 ), ( "to", 1 ), ( "what", 1 ) ]
                    (case Word2DictMatcher.findRelevantDict searchDict dataDict of
                        Nothing ->
                            searchDict |> Dict.toList

                        -- Give me back the search dict
                        Just bestDict ->
                            bestDict
                                |> Dict.toList
                     -- Give me the expected data
                    )
        , --skip <|
          test "data tokenizatoin and capital letters test" <|
            \() ->
                let
                    searchString =
                        [ "options" ]

                    searchDict =
                        Word2DictMatcher.wordsDict searchString
                in
                Expect.equal [ ( "are", 1 ), ( "options", 1 ), ( "shipping", 1 ), ( "the", 1 ), ( "what", 1 ) ]
                    (case Word2DictMatcher.findRelevantDict searchDict dataDict of
                        Nothing ->
                            searchDict |> Dict.toList

                        -- Give me back the search dict
                        Just bestDict ->
                            bestDict
                                |> Dict.toList
                     -- Give me the expected data
                    )
        , --skip <|
          test "search string tokenizatoin and capital letters test" <|
            \() ->
                let
                    searchString =
                        [ "Warranty?" ]

                    searchDict =
                        Word2DictMatcher.wordsDict searchString
                in
                Expect.equal [ ( "a", 1 ), ( "is", 1 ), ( "there", 1 ), ( "warranty", 1 ) ]
                    (case Word2DictMatcher.findRelevantDict searchDict dataDict of
                        Nothing ->
                            searchDict |> Dict.toList

                        -- Give me back the search dict
                        Just bestDict ->
                            bestDict
                                |> Dict.toList
                     -- Give me the expected data
                    )
        ]