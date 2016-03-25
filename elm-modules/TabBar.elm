module NativeUi.TabBar (translucent) where

import Json.Decode
import NativeUi exposing (Property, on)


translucent : Bool -> Property
translucent val =
  JsonProperty "translucent" (Json.Encode.bool val)
