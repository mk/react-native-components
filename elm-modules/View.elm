module View (..) where


accessible : Bool -> Property
accessible val =
  JsonProperty "accessible" (Json.Encode.bool val)


accessibilityLabel : String -> Property
accessibilityLabel val =
  JsonProperty "accessibilityLabel" (Json.Encode.string val)


type ViewAccessibilityLiveRegion
  = ViewAccessibilityLiveRegionNone
  | ViewAccessibilityLiveRegionPolite
  | ViewAccessibilityLiveRegionAssertive


accessibilityLiveRegion : ViewAccessibilityLiveRegion -> Property
accessibilityLiveRegion val =
  let
    stringValue =
      case accessibilityLiveRegion of
        ViewAccessibilityLiveRegionNone ->
          "none"

        ViewAccessibilityLiveRegionPolite ->
          "polite"

        ViewAccessibilityLiveRegionAssertive ->
          "assertive"

    jsonValue =
      Json.Encode.string stringValue
  in
    JsonProperty "accessibilityLiveRegion" jsonValue


type ViewImportantForAccessibility
  = ViewImportantForAccessibilityAuto
  | ViewImportantForAccessibilityYes
  | ViewImportantForAccessibilityNo
  | ViewImportantForAccessibilityNoHideDescendants


importantForAccessibility : ViewImportantForAccessibility -> Property
importantForAccessibility val =
  let
    stringValue =
      case importantForAccessibility of
        ViewImportantForAccessibilityAuto ->
          "auto"

        ViewImportantForAccessibilityYes ->
          "yes"

        ViewImportantForAccessibilityNo ->
          "no"

        ViewImportantForAccessibilityNoHideDescendants ->
          "no-hide-descendants"

    jsonValue =
      Json.Encode.string stringValue
  in
    JsonProperty "importantForAccessibility" jsonValue


onAccessibilityTap : Signal.Address a -> a -> Property
onAccessibilityTap address msg =
  on "AccessibilityTap" Json.Decode.value (\_ -> Signal.message address msg)


onMagicTap : Signal.Address a -> a -> Property
onMagicTap address msg =
  on "MagicTap" Json.Decode.value (\_ -> Signal.message address msg)


testID : String -> Property
testID val =
  JsonProperty "testID" (Json.Encode.string val)


onResponderGrant : Signal.Address a -> a -> Property
onResponderGrant address msg =
  on "ResponderGrant" Json.Decode.value (\_ -> Signal.message address msg)


onResponderMove : Signal.Address a -> a -> Property
onResponderMove address msg =
  on "ResponderMove" Json.Decode.value (\_ -> Signal.message address msg)


onResponderReject : Signal.Address a -> a -> Property
onResponderReject address msg =
  on "ResponderReject" Json.Decode.value (\_ -> Signal.message address msg)


onResponderRelease : Signal.Address a -> a -> Property
onResponderRelease address msg =
  on "ResponderRelease" Json.Decode.value (\_ -> Signal.message address msg)


onResponderTerminate : Signal.Address a -> a -> Property
onResponderTerminate address msg =
  on "ResponderTerminate" Json.Decode.value (\_ -> Signal.message address msg)


onResponderTerminationRequest : Signal.Address a -> a -> Property
onResponderTerminationRequest address msg =
  on "ResponderTerminationRequest" Json.Decode.value (\_ -> Signal.message address msg)


onStartShouldSetResponder : Signal.Address a -> a -> Property
onStartShouldSetResponder address msg =
  on "StartShouldSetResponder" Json.Decode.value (\_ -> Signal.message address msg)


onStartShouldSetResponderCapture : Signal.Address a -> a -> Property
onStartShouldSetResponderCapture address msg =
  on "StartShouldSetResponderCapture" Json.Decode.value (\_ -> Signal.message address msg)


onMoveShouldSetResponder : Signal.Address a -> a -> Property
onMoveShouldSetResponder address msg =
  on "MoveShouldSetResponder" Json.Decode.value (\_ -> Signal.message address msg)


onMoveShouldSetResponderCapture : Signal.Address a -> a -> Property
onMoveShouldSetResponderCapture address msg =
  on "MoveShouldSetResponderCapture" Json.Decode.value (\_ -> Signal.message address msg)


onLayout : Signal.Address a -> a -> Property
onLayout address msg =
  on "Layout" Json.Decode.value (\_ -> Signal.message address msg)


type ViewPointerEvents
  = ViewPointerEventsBoxNone
  | ViewPointerEventsNone
  | ViewPointerEventsBoxOnly
  | ViewPointerEventsAuto


pointerEvents : ViewPointerEvents -> Property
pointerEvents val =
  let
    stringValue =
      case pointerEvents of
        ViewPointerEventsBoxNone ->
          "box-none"

        ViewPointerEventsNone ->
          "none"

        ViewPointerEventsBoxOnly ->
          "box-only"

        ViewPointerEventsAuto ->
          "auto"

    jsonValue =
      Json.Encode.string stringValue
  in
    JsonProperty "pointerEvents" jsonValue


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
