module ScrollView where
  automaticallyAdjustContentInsets :  -> Property
automaticallyAdjustContentInsets val =
  JsonProperty "automaticallyAdjustContentInsets" (Json.Encode. val)

bounces :  -> Property
bounces val =
  JsonProperty "bounces" (Json.Encode. val)

bouncesZoom :  -> Property
bouncesZoom val =
  JsonProperty "bouncesZoom" (Json.Encode. val)

alwaysBounceHorizontal :  -> Property
alwaysBounceHorizontal val =
  JsonProperty "alwaysBounceHorizontal" (Json.Encode. val)

alwaysBounceVertical :  -> Property
alwaysBounceVertical val =
  JsonProperty "alwaysBounceVertical" (Json.Encode. val)

centerContent :  -> Property
centerContent val =
  JsonProperty "centerContent" (Json.Encode. val)

horizontal :  -> Property
horizontal val =
  JsonProperty "horizontal" (Json.Encode. val)

type ScrollViewIndicatorStyle
  = ScrollViewDefault
| ScrollView"black"
| ScrollViewWhite

indicatorStyle : ScrollViewIndicatorStyle -> Property
indicatorStyle val =
  let
    stringValue = case indicatorStyle of
      ScrollViewIndicatorStyleDefault -> "default"
ScrollViewIndicatorStyle"black" -> ""black""
ScrollViewIndicatorStyleWhite -> "white"
    jsonValue = Json.Encode.string stringValue
  in
    JsonProperty "indicatorStyle" jsonValue

directionalLockEnabled :  -> Property
directionalLockEnabled val =
  JsonProperty "directionalLockEnabled" (Json.Encode. val)

canCancelContentTouches :  -> Property
canCancelContentTouches val =
  JsonProperty "canCancelContentTouches" (Json.Encode. val)

type ScrollViewKeyboardDismissMode
  = ScrollViewNone
| ScrollView"interactive"
| ScrollViewOn-drag

keyboardDismissMode : ScrollViewKeyboardDismissMode -> Property
keyboardDismissMode val =
  let
    stringValue = case keyboardDismissMode of
      ScrollViewKeyboardDismissModeNone -> "none"
ScrollViewKeyboardDismissMode"interactive" -> ""interactive""
ScrollViewKeyboardDismissModeOn-drag -> "on-drag"
    jsonValue = Json.Encode.string stringValue
  in
    JsonProperty "keyboardDismissMode" jsonValue

keyboardShouldPersistTaps :  -> Property
keyboardShouldPersistTaps val =
  JsonProperty "keyboardShouldPersistTaps" (Json.Encode. val)

maximumZoomScale :  -> Property
maximumZoomScale val =
  JsonProperty "maximumZoomScale" (Json.Encode. val)

minimumZoomScale :  -> Property
minimumZoomScale val =
  JsonProperty "minimumZoomScale" (Json.Encode. val)

pagingEnabled :  -> Property
pagingEnabled val =
  JsonProperty "pagingEnabled" (Json.Encode. val)

scrollEnabled :  -> Property
scrollEnabled val =
  JsonProperty "scrollEnabled" (Json.Encode. val)

scrollEventThrottle :  -> Property
scrollEventThrottle val =
  JsonProperty "scrollEventThrottle" (Json.Encode. val)

scrollsToTop :  -> Property
scrollsToTop val =
  JsonProperty "scrollsToTop" (Json.Encode. val)

sendMomentumEvents :  -> Property
sendMomentumEvents val =
  JsonProperty "sendMomentumEvents" (Json.Encode. val)

showsHorizontalScrollIndicator :  -> Property
showsHorizontalScrollIndicator val =
  JsonProperty "showsHorizontalScrollIndicator" (Json.Encode. val)

showsVerticalScrollIndicator :  -> Property
showsVerticalScrollIndicator val =
  JsonProperty "showsVerticalScrollIndicator" (Json.Encode. val)

snapToInterval :  -> Property
snapToInterval val =
  JsonProperty "snapToInterval" (Json.Encode. val)

type ScrollViewSnapToAlignment
  = ScrollViewStart
| ScrollView"center"
| ScrollViewEnd

snapToAlignment : ScrollViewSnapToAlignment -> Property
snapToAlignment val =
  let
    stringValue = case snapToAlignment of
      ScrollViewSnapToAlignmentStart -> "start"
ScrollViewSnapToAlignment"center" -> ""center""
ScrollViewSnapToAlignmentEnd -> "end"
    jsonValue = Json.Encode.string stringValue
  in
    JsonProperty "snapToAlignment" jsonValue

removeClippedSubviews :  -> Property
removeClippedSubviews val =
  JsonProperty "removeClippedSubviews" (Json.Encode. val)

zoomScale :  -> Property
zoomScale val =
  JsonProperty "zoomScale" (Json.Encode. val)
