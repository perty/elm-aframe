module Minecraft exposing (main)

import AFrame exposing (scene)
import AFrame.Primitives exposing (cylinder)
import AFrame.Primitives.Attributes exposing (height, radius, src)
import Html exposing (Html)
import Html.Attributes exposing (id)


main : Html msg
main =
    scene []
        [ ground
        ]



{-
   <a-plane> and <a-circle> are basic primitives that are commonly used
   for adding a ground. We’ll be using <a-cylinder> to better work with
   the raycasters our controllers will be using. The cylinder will have
   a radius of 30 meters to match the radius of the sky we’ll add later.
   Note that A-Frame units are in meters to match the real-world units
   returned from the WebXR API.

   The texture of the ground we’ll be using is hosted at
   https://cdn.aframe.io/a-painter/images/floor.jpg". We’ll add the
   texture to our assets, and create a thin cylinder entity pointing to
   that texture.
-}


ground : Html msg
ground =
    cylinder
        [ id "ground"
        , height 0.1
        , radius 10
        , src "https://cdn.pixabay.com/photo/2013/07/12/15/00/grass-73383_960_720.png"
        ]
        []
