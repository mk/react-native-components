module NativeUi.SegmentedControl (selectedIndex, onValueChange, onChange, enabled, tintColor, momentary) where

import Json.Decode
import NativeUi exposing (Property, on)


selectedIndex : Float -> Property
selectedIndex val =
  JsonProperty "selectedIndex" (Json.Encode.float val)


onValueChange : Signal.Address a -> (String -> a) -> Property
onValueChange address stringToAction =
  on "ValueChange" Json.Decode.string (\value -> Signal.message address (stringToAction value))


onChange : Signal.Address a -> a -> Property
onChange address action =
  on "Change" Json.Decode.value (\_ -> Signal.message address action)


enabled : Bool -> Property
enabled val =
  JsonProperty "enabled" (Json.Encode.bool val)


tintColor : String -> Property
tintColor val =
  JsonProperty "tintColor" (Json.Encode.string val)


momentary : Bool -> Property
momentary val =
  JsonProperty "momentary" (Json.Encode.bool val)
