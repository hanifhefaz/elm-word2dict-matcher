module Example exposing (relevantDictTests, sentenceHistogramsTests, wordsDictTests)

import Data
import Dict exposing (..)
import Expect exposing (Expectation)
import Fuzz exposing (Fuzzer, int, list, string)
import Html exposing (..)
import Test exposing (..)
import Word2DictMatcher exposing (..)


dataDict =
    Data.data |> Word2DictMatcher.sentenceHistograms


relevantDictTests : Test
relevantDictTests =
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
          test "same mathces at the data, return the shortest one." <|
            \() ->
                let
                    searchString =
                        [ "where do you ship" ]

                    searchDict =
                        Word2DictMatcher.wordsDict searchString
                in
                Expect.equal [ ( "do", 1 ), ( "ship", 1 ), ( "where", 1 ), ( "you", 1 ) ]
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
          test "test random text with no meaning and no matches." <|
            \() ->
                let
                    searchString =
                        [ "sdfdfkjlskjdf fsdfe idfdis" ]

                    searchDict =
                        Word2DictMatcher.wordsDict searchString
                in
                Expect.equal [ ( "be", 1 ), ( "is", 1 ), ( "match", 1 ), ( "more", 1 ), ( "no", 1 ), ( "please", 1 ), ( "sorry", 1 ), ( "specific", 1 ), ( "text", 1 ), ( "there", 1 ), ( "to", 1 ), ( "your", 1 ) ]
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
          test "test empty string" <|
            \() ->
                let
                    searchString =
                        [ " " ]

                    searchDict =
                        Word2DictMatcher.wordsDict searchString
                in
                Expect.equal [ ( "be", 1 ), ( "is", 1 ), ( "match", 1 ), ( "more", 1 ), ( "no", 1 ), ( "please", 1 ), ( "sorry", 1 ), ( "specific", 1 ), ( "text", 1 ), ( "there", 1 ), ( "to", 1 ), ( "your", 1 ) ]
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


sentenceHistogramsTests : Test
sentenceHistogramsTests =
    describe
        "Tests making dictionary from the data"
        [ test "test making dictionary from the data with two sentences." <|
            \() ->
                let
                    dataText =
                        [ "test", "testing" ]
                in
                Expect.equal [ Dict.fromList [ ( "test", 1 ) ], Dict.fromList [ ( "testing", 1 ) ] ]
                    (dataText |> Word2DictMatcher.sentenceHistograms)
        , test "test making dictionary from the data with two sentences and Captial letters" <|
            \() ->
                let
                    dataText =
                        [ "Test", "teSting" ]
                in
                Expect.equal [ Dict.fromList [ ( "test", 1 ) ], Dict.fromList [ ( "testing", 1 ) ] ]
                    (dataText |> Word2DictMatcher.sentenceHistograms)
        , test "test making dictionary from the data with two sentences and Captial letters and alphanumeric symbols." <|
            \() ->
                let
                    dataText =
                        [ "T/est??6?", "?teSting5?5" ]
                in
                Expect.equal [ Dict.fromList [ ( "test", 1 ) ], Dict.fromList [ ( "testing", 1 ) ] ]
                    (dataText |> Word2DictMatcher.sentenceHistograms)
        ]


wordsDictTests : Test
wordsDictTests =
    describe
        "Testing the wordsDict function"
        [ test "test single word search text conversoin to dictionary." <|
            \() ->
                let
                    searchString =
                        [ "test" ]
                in
                Expect.equal [ ( "test", 1 ) ]
                    (Word2DictMatcher.wordsDict searchString |> Dict.toList)
        , test "test multiple words search text conversoin to dictionary." <|
            \() ->
                let
                    searchString =
                        [ "testing the text" ]
                in
                Expect.equal [ ( "testing", 1 ), ( "text", 1 ), ( "the", 1 ) ]
                    (Word2DictMatcher.wordsDict searchString |> Dict.toList)
        ]
