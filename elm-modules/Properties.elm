module NativeUi.Properties (animating, color, hidesWhenStopped, size, showsUserLocation, followUserLocation, showsPointsOfInterest, showsCompass, zoomEnabled, rotateEnabled, pitchEnabled, scrollEnabled, mapType, maxDelta, minDelta, active, enabled, mode, prompt, testID, progress, progressViewStyle, progressTintColor, trackTintColor, refreshing, title, automaticallyAdjustContentInsets, bounces, bouncesZoom, alwaysBounceHorizontal, alwaysBounceVertical, centerContent, horizontal, indicatorStyle, directionalLockEnabled, canCancelContentTouches, keyboardDismissMode, keyboardShouldPersistTaps, maximumZoomScale, minimumZoomScale, pagingEnabled, scrollEventThrottle, scrollsToTop, sendMomentumEvents, showsHorizontalScrollIndicator, showsVerticalScrollIndicator, snapToInterval, snapToAlignment, removeClippedSubviews, zoomScale, selectedIndex, tintColor, momentary, value, step, minimumValue, maximumValue, minimumTrackTintColor, maximumTrackTintColor, disabled, hidden, animated, translucent, barStyle, networkActivityIndicatorVisible, showHideTransition, numberOfLines, suppressHighlighting, allowFontScaling, autoCapitalize, autoCorrect, autoFocus, editable, keyboardType, keyboardAppearance, returnKeyType, maxLength, enablesReturnKeyAutomatically, multiline, placeholder, placeholderTextColor, secureTextEntry, selectionColor, defaultValue, clearButtonMode, clearTextOnFocus, selectTextOnFocus, blurOnSubmit, underlineColorAndroid, subtitle, contentInsetStart, contentInsetEnd, rtl, accessible, accessibilityLabel, accessibilityLiveRegion, importantForAccessibility, pointerEvents, renderToHardwareTextureAndroid, shouldRasterizeIOS, collapsable, needsOffscreenAlphaCompositing) where

import Json.Encode
import NativeUi exposing (Property)


animating : Bool -> Property
animating val =
  JsonProperty "animating" (Json.Encode.bool val)


color : String -> Property
color val =
  JsonProperty "color" (Json.Encode.string val)


hidesWhenStopped : Bool -> Property
hidesWhenStopped val =
  JsonProperty "hidesWhenStopped" (Json.Encode.bool val)


type ActivityIndicatorSize
  = ActivityIndicatorSizeSmall
  | ActivityIndicatorSizeLarge


size : ActivityIndicatorSize -> Property
size val =
  let
    stringValue =
      case size of
        ActivityIndicatorSizeSmall ->
          "small"

        ActivityIndicatorSizeLarge ->
          "large"

    jsonValue =
      Json.Encode.string stringValue
  in
    JsonProperty "size" jsonValue


showsUserLocation : Bool -> Property
showsUserLocation val =
  JsonProperty "showsUserLocation" (Json.Encode.bool val)


followUserLocation : Bool -> Property
followUserLocation val =
  JsonProperty "followUserLocation" (Json.Encode.bool val)


showsPointsOfInterest : Bool -> Property
showsPointsOfInterest val =
  JsonProperty "showsPointsOfInterest" (Json.Encode.bool val)


showsCompass : Bool -> Property
showsCompass val =
  JsonProperty "showsCompass" (Json.Encode.bool val)


zoomEnabled : Bool -> Property
zoomEnabled val =
  JsonProperty "zoomEnabled" (Json.Encode.bool val)


rotateEnabled : Bool -> Property
rotateEnabled val =
  JsonProperty "rotateEnabled" (Json.Encode.bool val)


pitchEnabled : Bool -> Property
pitchEnabled val =
  JsonProperty "pitchEnabled" (Json.Encode.bool val)


scrollEnabled : Bool -> Property
scrollEnabled val =
  JsonProperty "scrollEnabled" (Json.Encode.bool val)


type MapViewMapType
  = MapViewMapTypeStandard
  | MapViewMapTypeSatellite
  | MapViewMapTypeHybrid


mapType : MapViewMapType -> Property
mapType val =
  let
    stringValue =
      case mapType of
        MapViewMapTypeStandard ->
          "standard"

        MapViewMapTypeSatellite ->
          "satellite"

        MapViewMapTypeHybrid ->
          "hybrid"

    jsonValue =
      Json.Encode.string stringValue
  in
    JsonProperty "mapType" jsonValue


maxDelta : Float -> Property
maxDelta val =
  JsonProperty "maxDelta" (Json.Encode.float val)


minDelta : Float -> Property
minDelta val =
  JsonProperty "minDelta" (Json.Encode.float val)


active : Bool -> Property
active val =
  JsonProperty "active" (Json.Encode.bool val)


enabled : Bool -> Property
enabled val =
  JsonProperty "enabled" (Json.Encode.bool val)


type PickerMode
  = PickerModeDialog
  | PickerModeDropdown


mode : PickerMode -> Property
mode val =
  let
    stringValue =
      case mode of
        PickerModeDialog ->
          "dialog"

        PickerModeDropdown ->
          "dropdown"

    jsonValue =
      Json.Encode.string stringValue
  in
    JsonProperty "mode" jsonValue


prompt : String -> Property
prompt val =
  JsonProperty "prompt" (Json.Encode.string val)


testID : String -> Property
testID val =
  JsonProperty "testID" (Json.Encode.string val)


progress : Float -> Property
progress val =
  JsonProperty "progress" (Json.Encode.float val)


type ProgressViewProgressViewStyle
  = ProgressViewProgressViewStyleDefault
  | ProgressViewProgressViewStyleBar


progressViewStyle : ProgressViewProgressViewStyle -> Property
progressViewStyle val =
  let
    stringValue =
      case progressViewStyle of
        ProgressViewProgressViewStyleDefault ->
          "default"

        ProgressViewProgressViewStyleBar ->
          "bar"

    jsonValue =
      Json.Encode.string stringValue
  in
    JsonProperty "progressViewStyle" jsonValue


progressTintColor : String -> Property
progressTintColor val =
  JsonProperty "progressTintColor" (Json.Encode.string val)


trackTintColor : String -> Property
trackTintColor val =
  JsonProperty "trackTintColor" (Json.Encode.string val)


refreshing : Bool -> Property
refreshing val =
  JsonProperty "refreshing" (Json.Encode.bool val)


title : String -> Property
title val =
  JsonProperty "title" (Json.Encode.string val)


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


type ScrollViewIndicatorStyle
  = ScrollViewIndicatorStyleDefault
  | ScrollViewIndicatorStyleBlack
  | ScrollViewIndicatorStyleWhite


indicatorStyle : ScrollViewIndicatorStyle -> Property
indicatorStyle val =
  let
    stringValue =
      case indicatorStyle of
        ScrollViewIndicatorStyleDefault ->
          "default"

        ScrollViewIndicatorStyleBlack ->
          "black"

        ScrollViewIndicatorStyleWhite ->
          "white"

    jsonValue =
      Json.Encode.string stringValue
  in
    JsonProperty "indicatorStyle" jsonValue


directionalLockEnabled : Bool -> Property
directionalLockEnabled val =
  JsonProperty "directionalLockEnabled" (Json.Encode.bool val)


canCancelContentTouches : Bool -> Property
canCancelContentTouches val =
  JsonProperty "canCancelContentTouches" (Json.Encode.bool val)


type ScrollViewKeyboardDismissMode
  = ScrollViewKeyboardDismissModeNone
  | ScrollViewKeyboardDismissModeInteractive
  | ScrollViewKeyboardDismissModeOnDrag


keyboardDismissMode : ScrollViewKeyboardDismissMode -> Property
keyboardDismissMode val =
  let
    stringValue =
      case keyboardDismissMode of
        ScrollViewKeyboardDismissModeNone ->
          "none"

        ScrollViewKeyboardDismissModeInteractive ->
          "interactive"

        ScrollViewKeyboardDismissModeOnDrag ->
          "on-drag"

    jsonValue =
      Json.Encode.string stringValue
  in
    JsonProperty "keyboardDismissMode" jsonValue


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


type ScrollViewSnapToAlignment
  = ScrollViewSnapToAlignmentStart
  | ScrollViewSnapToAlignmentCenter
  | ScrollViewSnapToAlignmentEnd


snapToAlignment : ScrollViewSnapToAlignment -> Property
snapToAlignment val =
  let
    stringValue =
      case snapToAlignment of
        ScrollViewSnapToAlignmentStart ->
          "start"

        ScrollViewSnapToAlignmentCenter ->
          "center"

        ScrollViewSnapToAlignmentEnd ->
          "end"

    jsonValue =
      Json.Encode.string stringValue
  in
    JsonProperty "snapToAlignment" jsonValue


removeClippedSubviews : Bool -> Property
removeClippedSubviews val =
  JsonProperty "removeClippedSubviews" (Json.Encode.bool val)


zoomScale : Float -> Property
zoomScale val =
  JsonProperty "zoomScale" (Json.Encode.float val)


selectedIndex : Float -> Property
selectedIndex val =
  JsonProperty "selectedIndex" (Json.Encode.float val)


tintColor : String -> Property
tintColor val =
  JsonProperty "tintColor" (Json.Encode.string val)


momentary : Bool -> Property
momentary val =
  JsonProperty "momentary" (Json.Encode.bool val)


value : Float -> Property
value val =
  JsonProperty "value" (Json.Encode.float val)


step : Float -> Property
step val =
  JsonProperty "step" (Json.Encode.float val)


minimumValue : Float -> Property
minimumValue val =
  JsonProperty "minimumValue" (Json.Encode.float val)


maximumValue : Float -> Property
maximumValue val =
  JsonProperty "maximumValue" (Json.Encode.float val)


minimumTrackTintColor : String -> Property
minimumTrackTintColor val =
  JsonProperty "minimumTrackTintColor" (Json.Encode.string val)


maximumTrackTintColor : String -> Property
maximumTrackTintColor val =
  JsonProperty "maximumTrackTintColor" (Json.Encode.string val)


disabled : Bool -> Property
disabled val =
  JsonProperty "disabled" (Json.Encode.bool val)


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
    stringValue =
      case barStyle of
        StatusBarBarStyleDefault ->
          "default"

        StatusBarBarStyleLightContent ->
          "light-content"

    jsonValue =
      Json.Encode.string stringValue
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
    stringValue =
      case showHideTransition of
        StatusBarShowHideTransitionFade ->
          "fade"

        StatusBarShowHideTransitionSlide ->
          "slide"

    jsonValue =
      Json.Encode.string stringValue
  in
    JsonProperty "showHideTransition" jsonValue


numberOfLines : Float -> Property
numberOfLines val =
  JsonProperty "numberOfLines" (Json.Encode.float val)


suppressHighlighting : Bool -> Property
suppressHighlighting val =
  JsonProperty "suppressHighlighting" (Json.Encode.bool val)


allowFontScaling : Bool -> Property
allowFontScaling val =
  JsonProperty "allowFontScaling" (Json.Encode.bool val)


type TextInputAutoCapitalize
  = TextInputAutoCapitalizeNone
  | TextInputAutoCapitalizeSentences
  | TextInputAutoCapitalizeWords
  | TextInputAutoCapitalizeCharacters


autoCapitalize : TextInputAutoCapitalize -> Property
autoCapitalize val =
  let
    stringValue =
      case autoCapitalize of
        TextInputAutoCapitalizeNone ->
          "none"

        TextInputAutoCapitalizeSentences ->
          "sentences"

        TextInputAutoCapitalizeWords ->
          "words"

        TextInputAutoCapitalizeCharacters ->
          "characters"

    jsonValue =
      Json.Encode.string stringValue
  in
    JsonProperty "autoCapitalize" jsonValue


autoCorrect : Bool -> Property
autoCorrect val =
  JsonProperty "autoCorrect" (Json.Encode.bool val)


autoFocus : Bool -> Property
autoFocus val =
  JsonProperty "autoFocus" (Json.Encode.bool val)


editable : Bool -> Property
editable val =
  JsonProperty "editable" (Json.Encode.bool val)


type TextInputKeyboardType
  = TextInputKeyboardTypeDefault
  | TextInputKeyboardTypeEmailAddress
  | TextInputKeyboardTypeNumeric
  | TextInputKeyboardTypePhonePad
  | TextInputKeyboardTypeAsciiCapable
  | TextInputKeyboardTypeNumbersAndPunctuation
  | TextInputKeyboardTypeUrl
  | TextInputKeyboardTypeNumberPad
  | TextInputKeyboardTypeNamePhonePad
  | TextInputKeyboardTypeDecimalPad
  | TextInputKeyboardTypeTwitter
  | TextInputKeyboardTypeWebSearch


keyboardType : TextInputKeyboardType -> Property
keyboardType val =
  let
    stringValue =
      case keyboardType of
        TextInputKeyboardTypeDefault ->
          "default"

        TextInputKeyboardTypeEmailAddress ->
          "email-address"

        TextInputKeyboardTypeNumeric ->
          "numeric"

        TextInputKeyboardTypePhonePad ->
          "phone-pad"

        TextInputKeyboardTypeAsciiCapable ->
          "ascii-capable"

        TextInputKeyboardTypeNumbersAndPunctuation ->
          "numbers-and-punctuation"

        TextInputKeyboardTypeUrl ->
          "url"

        TextInputKeyboardTypeNumberPad ->
          "number-pad"

        TextInputKeyboardTypeNamePhonePad ->
          "name-phone-pad"

        TextInputKeyboardTypeDecimalPad ->
          "decimal-pad"

        TextInputKeyboardTypeTwitter ->
          "twitter"

        TextInputKeyboardTypeWebSearch ->
          "web-search"

    jsonValue =
      Json.Encode.string stringValue
  in
    JsonProperty "keyboardType" jsonValue


type TextInputKeyboardAppearance
  = TextInputKeyboardAppearanceDefault
  | TextInputKeyboardAppearanceLight
  | TextInputKeyboardAppearanceDark


keyboardAppearance : TextInputKeyboardAppearance -> Property
keyboardAppearance val =
  let
    stringValue =
      case keyboardAppearance of
        TextInputKeyboardAppearanceDefault ->
          "default"

        TextInputKeyboardAppearanceLight ->
          "light"

        TextInputKeyboardAppearanceDark ->
          "dark"

    jsonValue =
      Json.Encode.string stringValue
  in
    JsonProperty "keyboardAppearance" jsonValue


type TextInputReturnKeyType
  = TextInputReturnKeyTypeDefault
  | TextInputReturnKeyTypeGo
  | TextInputReturnKeyTypeGoogle
  | TextInputReturnKeyTypeJoin
  | TextInputReturnKeyTypeNext
  | TextInputReturnKeyTypeRoute
  | TextInputReturnKeyTypeSearch
  | TextInputReturnKeyTypeSend
  | TextInputReturnKeyTypeYahoo
  | TextInputReturnKeyTypeDone
  | TextInputReturnKeyTypeEmergencyCall


returnKeyType : TextInputReturnKeyType -> Property
returnKeyType val =
  let
    stringValue =
      case returnKeyType of
        TextInputReturnKeyTypeDefault ->
          "default"

        TextInputReturnKeyTypeGo ->
          "go"

        TextInputReturnKeyTypeGoogle ->
          "google"

        TextInputReturnKeyTypeJoin ->
          "join"

        TextInputReturnKeyTypeNext ->
          "next"

        TextInputReturnKeyTypeRoute ->
          "route"

        TextInputReturnKeyTypeSearch ->
          "search"

        TextInputReturnKeyTypeSend ->
          "send"

        TextInputReturnKeyTypeYahoo ->
          "yahoo"

        TextInputReturnKeyTypeDone ->
          "done"

        TextInputReturnKeyTypeEmergencyCall ->
          "emergency-call"

    jsonValue =
      Json.Encode.string stringValue
  in
    JsonProperty "returnKeyType" jsonValue


maxLength : Float -> Property
maxLength val =
  JsonProperty "maxLength" (Json.Encode.float val)


enablesReturnKeyAutomatically : Bool -> Property
enablesReturnKeyAutomatically val =
  JsonProperty "enablesReturnKeyAutomatically" (Json.Encode.bool val)


multiline : Bool -> Property
multiline val =
  JsonProperty "multiline" (Json.Encode.bool val)


placeholder : String -> Property
placeholder val =
  JsonProperty "placeholder" (Json.Encode.string val)


placeholderTextColor : String -> Property
placeholderTextColor val =
  JsonProperty "placeholderTextColor" (Json.Encode.string val)


secureTextEntry : Bool -> Property
secureTextEntry val =
  JsonProperty "secureTextEntry" (Json.Encode.bool val)


selectionColor : String -> Property
selectionColor val =
  JsonProperty "selectionColor" (Json.Encode.string val)


defaultValue : String -> Property
defaultValue val =
  JsonProperty "defaultValue" (Json.Encode.string val)


type TextInputClearButtonMode
  = TextInputClearButtonModeNever
  | TextInputClearButtonModeWhileEditing
  | TextInputClearButtonModeUnlessEditing
  | TextInputClearButtonModeAlways


clearButtonMode : TextInputClearButtonMode -> Property
clearButtonMode val =
  let
    stringValue =
      case clearButtonMode of
        TextInputClearButtonModeNever ->
          "never"

        TextInputClearButtonModeWhileEditing ->
          "while-editing"

        TextInputClearButtonModeUnlessEditing ->
          "unless-editing"

        TextInputClearButtonModeAlways ->
          "always"

    jsonValue =
      Json.Encode.string stringValue
  in
    JsonProperty "clearButtonMode" jsonValue


clearTextOnFocus : Bool -> Property
clearTextOnFocus val =
  JsonProperty "clearTextOnFocus" (Json.Encode.bool val)


selectTextOnFocus : Bool -> Property
selectTextOnFocus val =
  JsonProperty "selectTextOnFocus" (Json.Encode.bool val)


blurOnSubmit : Bool -> Property
blurOnSubmit val =
  JsonProperty "blurOnSubmit" (Json.Encode.bool val)


underlineColorAndroid : String -> Property
underlineColorAndroid val =
  JsonProperty "underlineColorAndroid" (Json.Encode.string val)


subtitle : String -> Property
subtitle val =
  JsonProperty "subtitle" (Json.Encode.string val)


contentInsetStart : Float -> Property
contentInsetStart val =
  JsonProperty "contentInsetStart" (Json.Encode.float val)


contentInsetEnd : Float -> Property
contentInsetEnd val =
  JsonProperty "contentInsetEnd" (Json.Encode.float val)


rtl : Bool -> Property
rtl val =
  JsonProperty "rtl" (Json.Encode.bool val)


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
