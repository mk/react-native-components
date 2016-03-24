module StatusBar where
  hidden :  -> Property
hidden val =
  JsonProperty "hidden" (Json.Encode. val)

animated :  -> Property
animated val =
  JsonProperty "animated" (Json.Encode. val)

translucent :  -> Property
translucent val =
  JsonProperty "translucent" (Json.Encode. val)

type StatusBarBarStyle
  = StatusBarDefault
| StatusBarLight-content

barStyle : StatusBarBarStyle -> Property
barStyle val =
  let
    stringValue = case barStyle of
      StatusBarBarStyleDefault -> "default"
StatusBarBarStyleLight-content -> "light-content"
    jsonValue = Json.Encode.string stringValue
  in
    JsonProperty "barStyle" jsonValue

networkActivityIndicatorVisible :  -> Property
networkActivityIndicatorVisible val =
  JsonProperty "networkActivityIndicatorVisible" (Json.Encode. val)

type StatusBarShowHideTransition
  = StatusBarFade
| StatusBarSlide

showHideTransition : StatusBarShowHideTransition -> Property
showHideTransition val =
  let
    stringValue = case showHideTransition of
      StatusBarShowHideTransitionFade -> "fade"
StatusBarShowHideTransitionSlide -> "slide"
    jsonValue = Json.Encode.string stringValue
  in
    JsonProperty "showHideTransition" jsonValue
