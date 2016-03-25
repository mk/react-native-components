module NativeUi.RefreshControl (onRefresh, refreshing, title, enabled) where

import Json.Decode
import NativeUi exposing (Property, on)


onRefresh : Signal.Address a -> a -> Property
onRefresh address action =
  on "Refresh" Json.Decode.value (\_ -> Signal.message address action)


refreshing : Bool -> Property
refreshing val =
  JsonProperty "refreshing" (Json.Encode.bool val)


title : String -> Property
title val =
  JsonProperty "title" (Json.Encode.string val)


enabled : Bool -> Property
enabled val =
  JsonProperty "enabled" (Json.Encode.bool val)
