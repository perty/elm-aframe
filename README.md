# Elm integration for A-Frame [![Build Status](https://travis-ci.org/halfzebra/elm-aframe.svg?branch=master)](https://travis-ci.org/halfzebra/elm-aframe)

This module brings declarative WebVR framework [A-Frame](https://aframe.io/) to Elm.

:warning: Highly experimental, since it depends on external JavaScript library.

## Tutorials

[Simple VR with Elm and A-Frame](https://github.com/tilmans/elm-aframe-example) by [@tilmans](https://github.com/tilmans)

## Running examples

    cd examples/HelloWorld
    elm-make Main.elm --output app.js

## Running webpack example
The webpack configuration includes a webserver and will automatically reload your code when you make changes. Error message during build will be shown in the browser console.

    cd examples/webpack
    npm install
    elm-make
    npm run start


