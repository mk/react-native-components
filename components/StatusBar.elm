module StatusBar where

hidden : Bool -> Property
hidden val =
  JsonProperty "hidden" (Json.Encode.bool val)

animated : Bool -> Property
animated val =
  JsonProperty "animated" (Json.Encode.bool val)

translucent : Bool -> Property
translucent val =
  JsonProperty "translucent" (Json.Encode.bool val)

type StatusBarBarStyle
  = StatusBarBarStyleDefault
  | StatusBarBarStyleLightContent

barStyle : StatusBarBarStyle -> Property
barStyle val =
  let
    stringValue = case barStyle of
      StatusBarBarStyleDefault -> "default"
      StatusBarBarStyleLightContent -> "light-content"
    jsonValue = Json.Encode.string stringValue
  in
    JsonProperty "barStyle" jsonValue

networkActivityIndicatorVisible : Bool -> Property
networkActivityIndicatorVisible val =
  JsonProperty "networkActivityIndicatorVisible" (Json.Encode.bool val)

type StatusBarShowHideTransition
  = StatusBarShowHideTransitionFade
  | StatusBarShowHideTransitionSlide

showHideTransition : StatusBarShowHideTransition -> Property
showHideTransition val =
  let
    stringValue = case showHideTransition of
      StatusBarShowHideTransitionFade -> "fade"
      StatusBarShowHideTransitionSlide -> "slide"
    jsonValue = Json.Encode.string stringValue
  in
    JsonProperty "showHideTransition" jsonValue
