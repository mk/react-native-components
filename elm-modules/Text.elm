module Text (..) where


numberOfLines : Float -> Property
numberOfLines val =
  JsonProperty "numberOfLines" (Json.Encode.float val)


onLayout : Signal.Address a -> a -> Property
onLayout address msg =
  on "Layout" Json.Decode.value (\_ -> Signal.message address msg)


onPress : Signal.Address a -> a -> Property
onPress address msg =
  on "Press" Json.Decode.value (\_ -> Signal.message address msg)


suppressHighlighting : Bool -> Property
suppressHighlighting val =
  JsonProperty "suppressHighlighting" (Json.Encode.bool val)


testID : String -> Property
testID val =
  JsonProperty "testID" (Json.Encode.string val)


allowFontScaling : Bool -> Property
allowFontScaling val =
  JsonProperty "allowFontScaling" (Json.Encode.bool val)
