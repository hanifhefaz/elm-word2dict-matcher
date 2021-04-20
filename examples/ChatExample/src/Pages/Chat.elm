module Pages.Chat exposing (Params,Model,Msg,page)

import Spa.Document exposing (Document)
import Spa.Url as Url exposing (Url)
import Browser exposing (sandbox)
import Dict exposing (..)
import Spa.Page as Page exposing (Page)
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onInput, onSubmit)
import Html
import Word2DictMatcher exposing (..)
import QuestionsBank



page : Page Params Model Msg
page =
    Page.sandbox
        { init = init
        , view = view
        , update = update
        }


type alias Model =
    { searchString : String
    , searchResult : SearchResult
    }

type alias Params =
    ()


init : Url Params -> Model
init { params } =
    {searchString = ""
    , searchResult = NotSearched
    }

type Msg
    = TypedSearch String
    | Search

type SearchResult
    = NotSearched
    | Searched (Maybe QuestionsBank.Answer)

update : Msg -> Model -> Model
update msg model =
    case msg of
        TypedSearch str ->
            { model | searchString = str }

        Search ->
            { model | searchResult = Searched <| Word2DictMatcher.findRelevantDict (model.searchString |> Word2DictMatcher.tokenize |> Word2DictMatcher.toHistogram) QuestionsBank.data }


view : Model -> Document Msg
view model =
    { title = "Main"
    , body = [div [ class "row py-5" ]
            [ div [ class "col-lg-12 mx-auto" ]
                [ div [ class "text-white p-5 shadow-sm rounded banner" ]
                    [ h1 [ class "display-4" ]
                        [ text "Ask our Agent" ]
                    , p [ class "lead" ]
                        [ text "Do you have any question, regarding our products?" ]
                        , div [ style "text-align" "center" ]
        [ Html.form[ onSubmit Search ][
         textarea [ style "width" "50%",style "margin" "auto", style "height" "150px", style "padding" "10px", onInput TypedSearch, value model.searchString ] []
        , br [][]
        , br [][]
        , button [class "btn btn-dark px-5 py-3 text-uppercase"] [ text "Ask me" ]]
        , br [][]
        , div [ style "width" "50%",style "background-color" "#32CD32",style "margin" "auto", style "height" "20%", style "padding" "40px" ]
            [ case model.searchResult of
                NotSearched ->
                    text ""

                Searched Nothing ->
                    text "Sorry, there is no words in the bag :)"

                Searched (Just answer) ->
                    text answer.answer
            ]
        ]
                    ]
                ]
            ]
        ]
    }
