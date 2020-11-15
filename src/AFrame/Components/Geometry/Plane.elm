module AFrame.Components.Geometry.Plane exposing (..)

import AFrame.Components.Properties exposing (Property, property)
import AFrame.Util exposing (..)


{-| Width along the X axis.

Default : `1`
-}
width : Float -> Property
width = property "width" << String.fromFloat


{-| Height along the Y axis.

Default : `1`
-}
height : Float -> Property
height = property "height" << String.fromFloat


{-| Number of segmented faces on the y-axis

Default: `1`
-}
segmentsHeight : Int -> Property
segmentsHeight = property "segmentsHeight" << String.fromInt


{-| Number of segmented faces on the x-axis

Default: `1`
-}
segmentsWidth : Int -> Property
segmentsWidth = property "segmentsWidth" << String.fromInt



