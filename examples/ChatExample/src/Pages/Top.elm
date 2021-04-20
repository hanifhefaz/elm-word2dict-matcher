module Pages.Top exposing (Model, Msg, Params, page)

import Html exposing (..)
import Spa.Document exposing (Document)
import Spa.Page as Page exposing (Page)
import Spa.Url exposing (Url)
import Html.Attributes exposing (..)


type alias Params =
    ()


type alias Model =
    Url Params


type alias Msg =
    Never


page : Page Params Model Msg
page =
    Page.static
        { view = view
        }



-- VIEW


view : Url Params -> Document Msg
view { params } =
    { title = "Homepage"
    , body = [
    div [ class "container-fluid" ]
    [ div [ class "px-lg-5" ]
        [ div [ class "row py-5" ]
            [ div [ class "col-lg-12 mx-auto" ]
                [ div [ class "text-white p-5 shadow-sm rounded banner" ]
                    [ h1 [ class "display-4" ]
                        [ text "Hot deals in our store" ]
                    , p [ class "lead" ]
                        [ text "Buy quality prodcuts with us" ]
                    , p [ class "lead" ]
                        [ text "Check out what suit you better!"]
                    ]
                ]
            ]
        , div [ class "row" ]
            [ div [ class "col-xl-3 col-lg-4 col-md-6 mb-4" ]
                [ div [ class "bg-white rounded shadow-sm" ]
                    [ img [ alt "", class "img-fluid card-img-top", src "mob1.png" ]
                        []
                    , div [ class "p-4" ]
                        [ h5 []
                            [ a [ class "text-dark", href "#" ]
                                [ text "Nexus Mobiles" ]
                            ]
                        , p [ class "small text-muted mb-0" ]
                            [ text "The newest brand in our store with good specifications and smart features!" ]
                        , div [ class "d-flex align-items-center justify-content-between rounded-pill bg-light px-3 py-2 mt-4" ]
                            [ p [ class "small mb-0" ]
                                [ i [ class "fa fa-picture-o mr-2" ]
                                    []
                                , span [ class "font-weight-bold" ]
                                    [ text "Nexus" ]
                                ]
                            , div [ class "badge badge-danger px-3 rounded-pill font-weight-normal" ]
                                [ text "New" ]
                            ]
                        ]
                    ]
                ]
            , text "      "
            , div [ class "col-xl-3 col-lg-4 col-md-6 mb-4" ]
                [ div [ class "bg-white rounded shadow-sm" ]
                    [ img [ alt "", class "img-fluid card-img-top", src "mob2.png" ]
                        []
                    , div [ class "p-4" ]
                        [ h5 []
                            [ a [ class "text-dark", href "#" ]
                                [ text "Blorange" ]
                            ]
                        , p [ class "small text-muted mb-0" ]
                            [ text "Blorange mobiles are currently trending in our store, check them out!" ]
                        , div [ class "d-flex align-items-center justify-content-between rounded-pill bg-light px-3 py-2 mt-4" ]
                            [ p [ class "small mb-0" ]
                                [ i [ class "fa fa-picture-o mr-2" ]
                                    []
                                , span [ class "font-weight-bold" ]
                                    [ text "Blorange" ]
                                ]
                            , div [ class "badge badge-primary px-3 rounded-pill font-weight-normal" ]
                                [ text "Trending" ]
                            ]
                        ]
                    ]
                ]
            , text "      "
            , div [ class "col-xl-3 col-lg-4 col-md-6 mb-4" ]
                [ div [ class "bg-white rounded shadow-sm" ]
                    [ img [ alt "", class "img-fluid card-img-top", src "mob3.png" ]
                        []
                    , div [ class "p-4" ]
                        [ h5 []
                            [ a [ class "text-dark", href "#" ]
                                [ text "Kara" ]
                            ]
                        , p [ class "small text-muted mb-0" ]
                            [ text "The simplest mobiles phones, you have ever seen." ]
                        , div [ class "d-flex align-items-center justify-content-between rounded-pill bg-light px-3 py-2 mt-4" ]
                            [ p [ class "small mb-0" ]
                                [ i [ class "fa fa-picture-o mr-2" ]
                                    []
                                , span [ class "font-weight-bold" ]
                                    [ text "Kara" ]
                                ]
                            , div [ class "badge badge-warning px-3 rounded-pill font-weight-normal text-white" ]
                                [ text "Coming soon" ]
                            ]
                        ]
                    ]
                ]
            , text "      "
            , div [ class "col-xl-3 col-lg-4 col-md-6 mb-4" ]
                [ div [ class "bg-white rounded shadow-sm" ]
                    [ img [ alt "", class "img-fluid card-img-top", src "mob4.png" ]
                        []
                    , div [ class "p-4" ]
                        [ h5 []
                            [ a [ class "text-dark", href "#" ]
                                [ text "Samsung P77" ]
                            ]
                        , p [ class "small text-muted mb-0" ]
                            [ text "The hottest product in the store!" ]
                        , div [ class "d-flex align-items-center justify-content-between rounded-pill bg-light px-3 py-2 mt-4" ]
                            [ p [ class "small mb-0" ]
                                [ i [ class "fa fa-picture-o mr-2" ]
                                    []
                                , span [ class "font-weight-bold" ]
                                    [ text "Samsung P77" ]
                                ]
                            , div [ class "badge badge-success px-3 rounded-pill font-weight-normal" ]
                                [ text "Hot" ]
                            ]
                        ]
                    ]
                ]
            , text "      "
            , div [ class "col-xl-3 col-lg-4 col-md-6 mb-4" ]
                [ div [ class "bg-white rounded shadow-sm" ]
                    [ img [ alt "", class "img-fluid card-img-top", src "mob5.jpg" ]
                        []
                    , div [ class "p-4" ]
                        [ h5 []
                            [ a [ class "text-dark", href "#" ]
                                [ text "Nokia T445" ]
                            ]
                        , p [ class "small text-muted mb-0" ]
                            [ text "These smart phones will gave you an amazing experience!" ]
                        , div [ class "d-flex align-items-center justify-content-between rounded-pill bg-light px-3 py-2 mt-4" ]
                            [ p [ class "small mb-0" ]
                                [ i [ class "fa fa-picture-o mr-2" ]
                                    []
                                , span [ class "font-weight-bold" ]
                                    [ text "Nokia T445" ]
                                ]
                            , div [ class "badge badge-primary px-3 rounded-pill font-weight-normal" ]
                                [ text "New" ]
                            ]
                        ]
                    ]
                ]
            , text "      "
            , div [ class "col-xl-3 col-lg-4 col-md-6 mb-4" ]
                [ div [ class "bg-white rounded shadow-sm" ]
                    [ img [ alt "", class "img-fluid card-img-top", src "laptop.jpg" ]
                        []
                    , div [ class "p-4" ]
                        [ h5 []
                            [ a [ class "text-dark", href "#" ]
                                [ text "Electron PC" ]
                            ]
                        , p [ class "small text-muted mb-0" ]
                            [ text "Another new brand has came to our store! a laptop with amazing features!" ]
                        , div [ class "d-flex align-items-center justify-content-between rounded-pill bg-light px-3 py-2 mt-4" ]
                            [ p [ class "small mb-0" ]
                                [ i [ class "fa fa-picture-o mr-2" ]
                                    []
                                , span [ class "font-weight-bold" ]
                                    [ text "Electron E11" ]
                                ]
                            , div [ class "badge badge-warning px-3 rounded-pill font-weight-normal text-white" ]
                                [ text "Featured" ]
                            ]
                        ]
                    ]
                ]
            , text "      "
            , div [ class "col-xl-3 col-lg-4 col-md-6 mb-4" ]
                [ div [ class "bg-white rounded shadow-sm" ]
                    [ img [ alt "", class "img-fluid card-img-top", src "laptop2.jpg" ]
                        []
                    , div [ class "p-4" ]
                        [ h5 []
                            [ a [ class "text-dark", href "#" ]
                                [ text "Teal Gameboy" ]
                            ]
                        , p [ class "small text-muted mb-0" ]
                            [ text "Lorem ipsum dolor sit amet, consectetur adipisicing elit" ]
                        , div [ class "d-flex align-items-center justify-content-between rounded-pill bg-light px-3 py-2 mt-4" ]
                            [ p [ class "small mb-0" ]
                                [ i [ class "fa fa-picture-o mr-2" ]
                                    []
                                , span [ class "font-weight-bold" ]
                                    [ text "JPEG" ]
                                ]
                            , div [ class "badge badge-info px-3 rounded-pill font-weight-normal" ]
                                [ text "Hot" ]
                            ]
                        ]
                    ]
                ]
            , text "      "
            , div [ class "col-xl-3 col-lg-4 col-md-6 mb-4" ]
                [ div [ class "bg-white rounded shadow-sm" ]
                    [ img [ alt "", class "img-fluid card-img-top", src "laptop3.jpg" ]
                        []
                    , div [ class "p-4" ]
                        [ h5 []
                            [ a [ class "text-dark", href "#" ]
                                [ text "Color in Guatemala." ]
                            ]
                        , p [ class "small text-muted mb-0" ]
                            [ text "Lorem ipsum dolor sit amet, consectetur adipisicing elit" ]
                        , div [ class "d-flex align-items-center justify-content-between rounded-pill bg-light px-3 py-2 mt-4" ]
                            [ p [ class "small mb-0" ]
                                [ i [ class "fa fa-picture-o mr-2" ]
                                    []
                                , span [ class "font-weight-bold" ]
                                    [ text "PNG" ]
                                ]
                            , div [ class "badge badge-warning px-3 rounded-pill font-weight-normal text-white" ]
                                [ text "Featured" ]
                            ]
                        ]
                    ]
                ]
            , text "      "
            , div [ class "col-xl-3 col-lg-4 col-md-6 mb-4" ]
                [ div [ class "bg-white rounded shadow-sm" ]
                    [ img [ alt "", class "img-fluid card-img-top", src "tab.jpg" ]
                        []
                    , div [ class "p-4" ]
                        [ h5 []
                            [ a [ class "text-dark", href "#" ]
                                [ text "Red paint cup" ]
                            ]
                        , p [ class "small text-muted mb-0" ]
                            [ text "Lorem ipsum dolor sit amet, consectetur adipisicing elit" ]
                        , div [ class "d-flex align-items-center justify-content-between rounded-pill bg-light px-3 py-2 mt-4" ]
                            [ p [ class "small mb-0" ]
                                [ i [ class "fa fa-picture-o mr-2" ]
                                    []
                                , span [ class "font-weight-bold" ]
                                    [ text "JPG" ]
                                ]
                            , div [ class "badge badge-danger px-3 rounded-pill font-weight-normal" ]
                                [ text "New" ]
                            ]
                        ]
                    ]
                ]
            , text "      "
            , div [ class "col-xl-3 col-lg-4 col-md-6 mb-4" ]
                [ div [ class "bg-white rounded shadow-sm" ]
                    [ img [ alt "", class "img-fluid card-img-top", src "tab2.jpg" ]
                        []
                    , div [ class "p-4" ]
                        [ h5 []
                            [ a [ class "text-dark", href "#" ]
                                [ text "Lorem ipsum dolor" ]
                            ]
                        , p [ class "small text-muted mb-0" ]
                            [ text "Lorem ipsum dolor sit amet, consectetur adipisicing elit" ]
                        , div [ class "d-flex align-items-center justify-content-between rounded-pill bg-light px-3 py-2 mt-4" ]
                            [ p [ class "small mb-0" ]
                                [ i [ class "fa fa-picture-o mr-2" ]
                                    []
                                , span [ class "font-weight-bold" ]
                                    [ text "PNG" ]
                                ]
                            , div [ class "badge badge-primary px-3 rounded-pill font-weight-normal" ]
                                [ text "Trend" ]
                            ]
                        ]
                    ]
                ]
            , text "      "
            , div [ class "col-xl-3 col-lg-4 col-md-6 mb-4" ]
                [ div [ class "bg-white rounded shadow-sm" ]
                    [ img [ alt "", class "img-fluid card-img-top", src "tab3.jpg" ]
                        []
                    , div [ class "p-4" ]
                        [ h5 []
                            [ a [ class "text-dark", href "#" ]
                                [ text "Lorem ipsum dolor" ]
                            ]
                        , p [ class "small text-muted mb-0" ]
                            [ text "Lorem ipsum dolor sit amet, consectetur adipisicing elit" ]
                        , div [ class "d-flex align-items-center justify-content-between rounded-pill bg-light px-3 py-2 mt-4" ]
                            [ p [ class "small mb-0" ]
                                [ i [ class "fa fa-picture-o mr-2" ]
                                    []
                                , span [ class "font-weight-bold" ]
                                    [ text "JPG" ]
                                ]
                            , div [ class "badge badge-warning px-3 rounded-pill font-weight-normal text-white" ]
                                [ text "Featured" ]
                            ]
                        ]
                    ]
                ]
            , text "      "
            , div [ class "col-xl-3 col-lg-4 col-md-6 mb-4" ]
                [ div [ class "bg-white rounded shadow-sm" ]
                    [ img [ alt "", class "img-fluid card-img-top", src "tab4.jpeg" ]
                        []
                    , div [ class "p-4" ]
                        [ h5 []
                            [ a [ class "text-dark", href "#" ]
                                [ text "Lorem ipsum dolor" ]
                            ]
                        , p [ class "small text-muted mb-0" ]
                            [ text "Lorem ipsum dolor sit amet, consectetur adipisicing elit" ]
                        , div [ class "d-flex align-items-center justify-content-between rounded-pill bg-light px-3 py-2 mt-4" ]
                            [ p [ class "small mb-0" ]
                                [ i [ class "fa fa-picture-o mr-2" ]
                                    []
                                , span [ class "font-weight-bold" ]
                                    [ text "JPEG" ]
                                ]
                            , div [ class "badge badge-success px-3 rounded-pill font-weight-normal" ]
                                [ text "Hot" ]
                            ]
                        ]
                    ]
                ]
            , text "    "
            ]
        , div [ class "py-5 text-right" ]
            [ a [ class "btn btn-dark px-5 py-3 text-uppercase", href "#" ]
                [ text "Show me more" ]
            ]
        ]
    ]
    ]
    }