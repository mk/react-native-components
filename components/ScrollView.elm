module ScrollView where
  automaticallyAdjustContentInsets : Bool -> Property
automaticallyAdjustContentInsets val =
  JsonProperty "automaticallyAdjustContentInsets" (Json.Encode.bool val)

bounces : Bool -> Property
bounces val =
  JsonProperty "bounces" (Json.Encode.bool val)

bouncesZoom : Bool -> Property
bouncesZoom val =
  JsonProperty "bouncesZoom" (Json.Encode.bool val)

alwaysBounceHorizontal : Bool -> Property
alwaysBounceHorizontal val =
  JsonProperty "alwaysBounceHorizontal" (Json.Encode.bool val)

alwaysBounceVertical : Bool -> Property
alwaysBounceVertical val =
  JsonProperty "alwaysBounceVertical" (Json.Encode.bool val)

centerContent : Bool -> Property
centerContent val =
  JsonProperty "centerContent" (Json.Encode.bool val)

horizontal : Bool -> Property
horizontal val =
  JsonProperty "horizontal" (Json.Encode.bool val)

directionalLockEnabled : Bool -> Property
directionalLockEnabled val =
  JsonProperty "directionalLockEnabled" (Json.Encode.bool val)

canCancelContentTouches : Bool -> Property
canCancelContentTouches val =
  JsonProperty "canCancelContentTouches" (Json.Encode.bool val)

keyboardShouldPersistTaps : Bool -> Property
keyboardShouldPersistTaps val =
  JsonProperty "keyboardShouldPersistTaps" (Json.Encode.bool val)

maximumZoomScale : Float -> Property
maximumZoomScale val =
  JsonProperty "maximumZoomScale" (Json.Encode.float val)

minimumZoomScale : Float -> Property
minimumZoomScale val =
  JsonProperty "minimumZoomScale" (Json.Encode.float val)

pagingEnabled : Bool -> Property
pagingEnabled val =
  JsonProperty "pagingEnabled" (Json.Encode.bool val)

scrollEnabled : Bool -> Property
scrollEnabled val =
  JsonProperty "scrollEnabled" (Json.Encode.bool val)

scrollEventThrottle : Float -> Property
scrollEventThrottle val =
  JsonProperty "scrollEventThrottle" (Json.Encode.float val)

scrollsToTop : Bool -> Property
scrollsToTop val =
  JsonProperty "scrollsToTop" (Json.Encode.bool val)

sendMomentumEvents : Bool -> Property
sendMomentumEvents val =
  JsonProperty "sendMomentumEvents" (Json.Encode.bool val)

showsHorizontalScrollIndicator : Bool -> Property
showsHorizontalScrollIndicator val =
  JsonProperty "showsHorizontalScrollIndicator" (Json.Encode.bool val)

showsVerticalScrollIndicator : Bool -> Property
showsVerticalScrollIndicator val =
  JsonProperty "showsVerticalScrollIndicator" (Json.Encode.bool val)

snapToInterval : Float -> Property
snapToInterval val =
  JsonProperty "snapToInterval" (Json.Encode.float val)

removeClippedSubviews : Bool -> Property
removeClippedSubviews val =
  JsonProperty "removeClippedSubviews" (Json.Encode.bool val)

zoomScale : Float -> Property
zoomScale val =
  JsonProperty "zoomScale" (Json.Encode.float val)
