module SegmentedControl where
  selectedIndex : Float -> Property
selectedIndex val =
  JsonProperty "selectedIndex" (Json.Encode.float val)

enabled : Bool -> Property
enabled val =
  JsonProperty "enabled" (Json.Encode.bool val)

tintColor : String -> Property
tintColor val =
  JsonProperty "tintColor" (Json.Encode.string val)

momentary : Bool -> Property
momentary val =
  JsonProperty "momentary" (Json.Encode.bool val)
