module View where

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
    stringValue = case accessibilityLiveRegion of
      ViewAccessibilityLiveRegionNone -> "none"
      ViewAccessibilityLiveRegionPolite -> "polite"
      ViewAccessibilityLiveRegionAssertive -> "assertive"
    jsonValue = Json.Encode.string stringValue
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
    stringValue = case importantForAccessibility of
      ViewImportantForAccessibilityAuto -> "auto"
      ViewImportantForAccessibilityYes -> "yes"
      ViewImportantForAccessibilityNo -> "no"
      ViewImportantForAccessibilityNoHideDescendants -> "no-hide-descendants"
    jsonValue = Json.Encode.string stringValue
  in
    JsonProperty "importantForAccessibility" jsonValue

testID : String -> Property
testID val =
  JsonProperty "testID" (Json.Encode.string val)

type ViewPointerEvents
  = ViewPointerEventsBoxNone
  | ViewPointerEventsNone
  | ViewPointerEventsBoxOnly
  | ViewPointerEventsAuto

pointerEvents : ViewPointerEvents -> Property
pointerEvents val =
  let
    stringValue = case pointerEvents of
      ViewPointerEventsBoxNone -> "box-none"
      ViewPointerEventsNone -> "none"
      ViewPointerEventsBoxOnly -> "box-only"
      ViewPointerEventsAuto -> "auto"
    jsonValue = Json.Encode.string stringValue
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
