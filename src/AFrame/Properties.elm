module AFrame.Properties exposing (..)


import Html exposing (Attribute)
import Html.Attributes exposing (attribute)


type alias Property = ( String, String )


property : String -> String -> Property
property = Tuple.pair


toString : List Property -> String
toString =
    let
        propToString ( name, value ) = name ++ ": " ++ value
    in
        String.join "; "
        << List.map propToString








