module Minecraft exposing (main)

import AFrame exposing (scene)
import AFrame.Primitives exposing (assets, cylinder, sky)
import AFrame.Primitives.Attributes exposing (height, radius, src, thetaLength)
import Html exposing (Html, img)
import Html.Attributes exposing (id)


main : Html msg
main =
    scene []
        [ loadAssets
        , ground
        , createSky
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
   Specifying a URL via the src attribute will load the texture at runtime.
   Since network requests can negatively impact render performance, we can
   preload the texture such that the scene doesn’t start rendering until its
   assets have been fetched. We can do this using the asset management system.

   We place <a-assets> into our <a-scene>, place assets (e.g., images,
   videos, models, sounds) into <a-assets>, and point to them from our
   entities via a selector (e.g., #myTexture).

   Let’s move our ground texture to <a-assets> to be preloaded using an
   <img> element:
-}
{-
   Adding a Background
   Let’s add a 360° background to our <a-scene> with the <a-sky> element.
   <a-sky> is a large 3D sphere with a material mapped on the inside. Just
   like a normal image, <a-sky> can take an image path with src. This ultimately
   lets us do immersive 360° images with one line of HTML. As an exercise later,
   try using some 360° images from Flickr’s equirectangular pool.

   We could add a plain color background (e.g., <a-sky color="#333"></a-sky>)
   or a gradient, but let’s add a textured background with an image. The image
   we’re using is hosted at https://cdn.aframe.io/a-painter/images/sky.jpg.

   The image texture we are using covers semi-sphere so we’ll chop our sphere
   in half with theta-length="90", and we’ll give our sphere a radius of 30 meters
   to match the ground:
-}


loadAssets : Html msg
loadAssets =
    assets []
        [ img
            [ id "groundTexture"
            , src "https://cdn.aframe.io/a-painter/images/floor.jpg"
            ]
            []
        , img
            [ id "skyTexture"
            , src "https://cdn.aframe.io/a-painter/images/sky.jpg"
            ]
            []
        ]


createSky : Html msg
createSky =
    sky
        [ id "background"
        , src "#skyTexture"
        , thetaLength 90
        , radius 30
        ]
        []
