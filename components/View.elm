module View where
  accessible : Bool -> Property
accessible val =
  JsonProperty "accessible" (Json.Encode.bool val)

accessibilityLabel : String -> Property
accessibilityLabel val =
  JsonProperty "accessibilityLabel" (Json.Encode.string val)













testID : String -> Property
testID val =
  JsonProperty "testID" (Json.Encode.string val)





























removeClippedSubviews : Bool -> Property
removeClippedSubviews val =
  JsonProperty "removeClippedSubviews" (Json.Encode.bool val)

renderToHardwareTextureAndroid : Bool -> Property
renderToHardwareTextureAndroid val =
  JsonProperty "renderToHardwareTextureAndroid" (Json.Encode.bool val)

shouldRasterizeIOS : Bool -> Property
shouldRasterizeIOS val =
  JsonProperty "shouldRasterizeIOS" (Json.Encode.bool val)

collapsable : Bool -> Property
collapsable val =
  JsonProperty "collapsable" (Json.Encode.bool val)

needsOffscreenAlphaCompositing : Bool -> Property
needsOffscreenAlphaCompositing val =
  JsonProperty "needsOffscreenAlphaCompositing" (Json.Encode.bool val)
