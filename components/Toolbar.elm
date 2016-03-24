module Toolbar where
  subtitle :  -> Property
subtitle val =
  JsonProperty "subtitle" (Json.Encode. val)

title :  -> Property
title val =
  JsonProperty "title" (Json.Encode. val)

contentInsetStart :  -> Property
contentInsetStart val =
  JsonProperty "contentInsetStart" (Json.Encode. val)

contentInsetEnd :  -> Property
contentInsetEnd val =
  JsonProperty "contentInsetEnd" (Json.Encode. val)

rtl :  -> Property
rtl val =
  JsonProperty "rtl" (Json.Encode. val)

testID :  -> Property
testID val =
  JsonProperty "testID" (Json.Encode. val)
