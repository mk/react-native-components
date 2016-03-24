module Text (..) where


numberOfLines : Float -> Property
numberOfLines val =
  JsonProperty "numberOfLines" (Json.Encode.float val)


onLayout : Signal.Address a -> a -> Property
onLayout address action =
  on "Layout" Json.Decode.value (\_ -> Signal.message address action)


onPress : Signal.Address a -> a -> Property
onPress address action =
  on "Press" Json.Decode.value (\_ -> Signal.message address action)


suppressHighlighting : Bool -> Property
suppressHighlighting val =
  JsonProperty "suppressHighlighting" (Json.Encode.bool val)


testID : String -> Property
testID val =
  JsonProperty "testID" (Json.Encode.string val)


allowFontScaling : Bool -> Property
allowFontScaling val =
  JsonProperty "allowFontScaling" (Json.Encode.bool val)
