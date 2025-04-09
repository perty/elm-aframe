module Minecraft exposing (main)

import AFrame exposing (scene)
import AFrame.Primitives exposing (assets, cylinder)
import AFrame.Primitives.Attributes exposing (height, radius, src)
import Html exposing (Html, img)
import Html.Attributes exposing (id)


main : Html msg
main =
    scene []
        [ loadAssets
        , ground
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
        , radius 32
        , src "#groundTexture"
        ]
        []



{-
   Preloading Assets
   Specifying a URL via the src attribute will load the texture at runtime. Since network requests can negatively impact render performance, we can preload the texture such that the scene doesn’t start rendering until its assets have been fetched. We can do this using the asset management system.

   We place <a-assets> into our <a-scene>, place assets (e.g., images, videos, models, sounds) into <a-assets>, and point to them from our entities via a selector (e.g., #myTexture).

   Let’s move our ground texture to <a-assets> to be preloaded using an <img> element:
-}


loadAssets : Html msg
loadAssets =
    assets []
        [ img
            [ id "groundTexture"
            , src "https://cdn.aframe.io/a-painter/images/floor.jpg"
            ]
            []
        ]
