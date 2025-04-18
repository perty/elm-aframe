module ElmLogo exposing (..)

import AFrame.Variants.Easing as Easing
import AFrame.Variants.Fill as Fill
import Html exposing (Html)
import Color exposing (rgb255, Color)
import AFrame exposing (scene, entity)
import AFrame.Animations exposing (animation, attribute_, dur, easing, fill, loop, to)
import AFrame.Primitives exposing (cylinder)
import AFrame.Primitives.Attributes
    exposing
        ( rotation
        , color
        , scale
        , radius
        , position
        , segmentsRadial
        )
import AFrame.Primitives.Camera exposing (camera, wasdControlsEnabled)


{-| Calculate scale factor for x axis of a triangular prism,
to get a prism with a proper shape.

    heightFromPrismRadius 2
-}
heightFromPrismRadius : Float -> Float
heightFromPrismRadius radius =
    radius / ((sqrt 3) / 3)


orange : Color
orange =
    rgb255 240 173 0


grey : Color
grey =
    rgb255 90 99 120


green : Color
green =
    rgb255 127 209 59


blue : Color
blue =
    rgb255 6 181 204


main : Html msg
main =
    scene
        []
        [ camera [ wasdControlsEnabled False, position 0 0 5 ] []
        , entity []
            [ animation
                [ attribute_ "rotation"
                , dur 10000
                , easing Easing.easeInOutSine
                , fill Fill.forwards
                , to "0 360 0"
                , loop 10000
                ]
                []
            , cylinder
                [ radius 1
                , segmentsRadial 3
                , scale (heightFromPrismRadius 1) 1 1
                , color blue
                , rotation -90 0 0
                , position 0 0 0
                ]
                []
            , cylinder
                [ radius 1
                , segmentsRadial 3
                , scale (heightFromPrismRadius ((sqrt 2) / 2)) 1 ((sqrt 2) / 2)
                , color blue
                , rotation -135 -90 90
                , position 1 2 0
                ]
                []
            , cylinder
                [ radius 1
                , segmentsRadial 3
                , scale (heightFromPrismRadius 1) 1 1
                , color grey
                , rotation 0 90 90
                , position -1 1 0
                ]
                []
            , cylinder
                [ radius 1
                , segmentsRadial 3
                , scale (heightFromPrismRadius 0.5) 1 0.5
                , color orange
                , rotation 0 -90 90
                , position 1.25 0.25 0
                ]
                []
            , cylinder
                [ radius 1
                , segmentsRadial 3
                , scale (heightFromPrismRadius 0.5) 1 0.5
                , color orange
                , rotation 90 -90 90
                , position 0 1.5 0
                ]
                []
            , cylinder
                [ radius 1
                , segmentsRadial 4
                , scale 0.75 1 0.75
                , color green
                , rotation 90 -90 90
                , position 0.75 1 0
                ]
                []
            , entity
                []
                [ cylinder
                    [ radius 1
                    , segmentsRadial 3
                    , scale (heightFromPrismRadius 0.5) 1 0.5
                    , color green
                    , rotation -90 90 90
                    , position 0 2 0
                    ]
                    []
                , cylinder
                    [ radius 1
                    , segmentsRadial 3
                    , scale (heightFromPrismRadius 0.5) 1 0.5
                    , color green
                    , rotation 90 -90 90
                    , position -0.75 2.25 0
                    ]
                    []
                ]
            ]
        ]
