module NativeUi.Slider (value, step, minimumValue, maximumValue, minimumTrackTintColor, maximumTrackTintColor, disabled, onValueChange, onSlidingComplete) where

import Json.Decode
import NativeUi exposing (Property, on)


value : Float -> Property
value val =
  JsonProperty "value" (Json.Encode.float val)


step : Float -> Property
step val =
  JsonProperty "step" (Json.Encode.float val)


minimumValue : Float -> Property
minimumValue val =
  JsonProperty "minimumValue" (Json.Encode.float val)


maximumValue : Float -> Property
maximumValue val =
  JsonProperty "maximumValue" (Json.Encode.float val)


minimumTrackTintColor : String -> Property
minimumTrackTintColor val =
  JsonProperty "minimumTrackTintColor" (Json.Encode.string val)


maximumTrackTintColor : String -> Property
maximumTrackTintColor val =
  JsonProperty "maximumTrackTintColor" (Json.Encode.string val)


disabled : Bool -> Property
disabled val =
  JsonProperty "disabled" (Json.Encode.bool val)


onValueChange : Signal.Address a -> (String -> a) -> Property
onValueChange address stringToAction =
  on "ValueChange" Json.Decode.string (\value -> Signal.message address (stringToAction value))


onSlidingComplete : Signal.Address a -> a -> Property
onSlidingComplete address action =
  on "SlidingComplete" Json.Decode.value (\_ -> Signal.message address action)
