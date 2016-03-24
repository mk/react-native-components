module NativeUi.Handlers (onLayout, onRegionChange, onRegionChangeComplete, onAnnotationPress, onValueChange, onRefresh, onScroll, onScrollAnimationEnd, onContentSizeChange, onChange, onSlidingComplete, onPress, onBlur, onFocus, onChangeText, onEndEditing, onSelectionChange, onSubmitEditing, onKeyPress, onActionSelected, onIconClicked, onAccessibilityTap, onMagicTap, onResponderGrant, onResponderMove, onResponderReject, onResponderRelease, onResponderTerminate, onResponderTerminationRequest, onStartShouldSetResponder, onStartShouldSetResponderCapture, onMoveShouldSetResponder, onMoveShouldSetResponderCapture) where

import Json.Encode


onLayout : Signal.Address a -> a -> Property
onLayout address action =
  on "Layout" Json.Decode.value (\_ -> Signal.message address action)


onRegionChange : Signal.Address a -> a -> Property
onRegionChange address action =
  on "RegionChange" Json.Decode.value (\_ -> Signal.message address action)


onRegionChangeComplete : Signal.Address a -> a -> Property
onRegionChangeComplete address action =
  on "RegionChangeComplete" Json.Decode.value (\_ -> Signal.message address action)


onAnnotationPress : Signal.Address a -> a -> Property
onAnnotationPress address action =
  on "AnnotationPress" Json.Decode.value (\_ -> Signal.message address action)


onValueChange : Signal.Address a -> (String -> a) -> Property
onValueChange address stringToAction =
  on "ValueChange" Json.Decode.string (\value -> Signal.message address (stringToAction value))


onRefresh : Signal.Address a -> a -> Property
onRefresh address action =
  on "Refresh" Json.Decode.value (\_ -> Signal.message address action)


onScroll : Signal.Address a -> a -> Property
onScroll address action =
  on "Scroll" Json.Decode.value (\_ -> Signal.message address action)


onScrollAnimationEnd : Signal.Address a -> a -> Property
onScrollAnimationEnd address action =
  on "ScrollAnimationEnd" Json.Decode.value (\_ -> Signal.message address action)


onContentSizeChange : Signal.Address a -> a -> Property
onContentSizeChange address action =
  on "ContentSizeChange" Json.Decode.value (\_ -> Signal.message address action)


onChange : Signal.Address a -> a -> Property
onChange address action =
  on "Change" Json.Decode.value (\_ -> Signal.message address action)


onSlidingComplete : Signal.Address a -> a -> Property
onSlidingComplete address action =
  on "SlidingComplete" Json.Decode.value (\_ -> Signal.message address action)


onPress : Signal.Address a -> a -> Property
onPress address action =
  on "Press" Json.Decode.value (\_ -> Signal.message address action)


onBlur : Signal.Address a -> a -> Property
onBlur address action =
  on "Blur" Json.Decode.value (\_ -> Signal.message address action)


onFocus : Signal.Address a -> a -> Property
onFocus address action =
  on "Focus" Json.Decode.value (\_ -> Signal.message address action)


onChangeText : Signal.Address a -> (String -> a) -> Property
onChangeText address stringToAction =
  on "ChangeText" Json.Decode.string (\text -> Signal.message address (stringToAction text))


onEndEditing : Signal.Address a -> a -> Property
onEndEditing address action =
  on "EndEditing" Json.Decode.value (\_ -> Signal.message address action)


onSelectionChange : Signal.Address a -> a -> Property
onSelectionChange address action =
  on "SelectionChange" Json.Decode.value (\_ -> Signal.message address action)


onSubmitEditing : Signal.Address a -> a -> Property
onSubmitEditing address action =
  on "SubmitEditing" Json.Decode.value (\_ -> Signal.message address action)


onKeyPress : Signal.Address a -> a -> Property
onKeyPress address action =
  on "KeyPress" Json.Decode.value (\_ -> Signal.message address action)


onActionSelected : Signal.Address a -> a -> Property
onActionSelected address action =
  on "ActionSelected" Json.Decode.value (\_ -> Signal.message address action)


onIconClicked : Signal.Address a -> a -> Property
onIconClicked address action =
  on "IconClicked" Json.Decode.value (\_ -> Signal.message address action)


onAccessibilityTap : Signal.Address a -> a -> Property
onAccessibilityTap address action =
  on "AccessibilityTap" Json.Decode.value (\_ -> Signal.message address action)


onMagicTap : Signal.Address a -> a -> Property
onMagicTap address action =
  on "MagicTap" Json.Decode.value (\_ -> Signal.message address action)


onResponderGrant : Signal.Address a -> a -> Property
onResponderGrant address action =
  on "ResponderGrant" Json.Decode.value (\_ -> Signal.message address action)


onResponderMove : Signal.Address a -> a -> Property
onResponderMove address action =
  on "ResponderMove" Json.Decode.value (\_ -> Signal.message address action)


onResponderReject : Signal.Address a -> a -> Property
onResponderReject address action =
  on "ResponderReject" Json.Decode.value (\_ -> Signal.message address action)


onResponderRelease : Signal.Address a -> a -> Property
onResponderRelease address action =
  on "ResponderRelease" Json.Decode.value (\_ -> Signal.message address action)


onResponderTerminate : Signal.Address a -> a -> Property
onResponderTerminate address action =
  on "ResponderTerminate" Json.Decode.value (\_ -> Signal.message address action)


onResponderTerminationRequest : Signal.Address a -> a -> Property
onResponderTerminationRequest address action =
  on "ResponderTerminationRequest" Json.Decode.value (\_ -> Signal.message address action)


onStartShouldSetResponder : Signal.Address a -> a -> Property
onStartShouldSetResponder address action =
  on "StartShouldSetResponder" Json.Decode.value (\_ -> Signal.message address action)


onStartShouldSetResponderCapture : Signal.Address a -> a -> Property
onStartShouldSetResponderCapture address action =
  on "StartShouldSetResponderCapture" Json.Decode.value (\_ -> Signal.message address action)


onMoveShouldSetResponder : Signal.Address a -> a -> Property
onMoveShouldSetResponder address action =
  on "MoveShouldSetResponder" Json.Decode.value (\_ -> Signal.message address action)


onMoveShouldSetResponderCapture : Signal.Address a -> a -> Property
onMoveShouldSetResponderCapture address action =
  on "MoveShouldSetResponderCapture" Json.Decode.value (\_ -> Signal.message address action)
