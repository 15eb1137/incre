module Main exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)

type alias Model =
    { hogehoge : String }

initModel : Model
initModel =
    Model ""

type Msg
    = Hoge

update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Hoge ->
            model

view : Model -> Html Msg
view model =
    div [] []

subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none

init : () -> ( Model, Cmd Msg )
init _ =
    ( initModel, Cmd.none )

main : Program () Model Msg
main =
    Browser.element
        { init = init
        , subscriptions = subscriptions
        , view = view
        , update = update
        }
