module Text (..) where


numberOfLines : Float -> Property
numberOfLines val =
  JsonProperty "numberOfLines" (Json.Encode.float val)


suppressHighlighting : Bool -> Property
suppressHighlighting val =
  JsonProperty "suppressHighlighting" (Json.Encode.bool val)


testID : String -> Property
testID val =
  JsonProperty "testID" (Json.Encode.string val)


allowFontScaling : Bool -> Property
allowFontScaling val =
  JsonProperty "allowFontScaling" (Json.Encode.bool val)
