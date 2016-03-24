module Toolbar (..) where


onActionSelected : Signal.Address a -> a -> Property
onActionSelected address msg =
  on "ActionSelected" Json.Decode.value (\_ -> Signal.message address msg)


onIconClicked : Signal.Address a -> a -> Property
onIconClicked address msg =
  on "IconClicked" Json.Decode.value (\_ -> Signal.message address msg)


subtitle : String -> Property
subtitle val =
  JsonProperty "subtitle" (Json.Encode.string val)


title : String -> Property
title val =
  JsonProperty "title" (Json.Encode.string val)


contentInsetStart : Float -> Property
contentInsetStart val =
  JsonProperty "contentInsetStart" (Json.Encode.float val)


contentInsetEnd : Float -> Property
contentInsetEnd val =
  JsonProperty "contentInsetEnd" (Json.Encode.float val)


rtl : Bool -> Property
rtl val =
  JsonProperty "rtl" (Json.Encode.bool val)


testID : String -> Property
testID val =
  JsonProperty "testID" (Json.Encode.string val)