module SegmentedControl where
  selectedIndex :  -> Property
selectedIndex val =
  JsonProperty "selectedIndex" (Json.Encode. val)

enabled :  -> Property
enabled val =
  JsonProperty "enabled" (Json.Encode. val)

tintColor :  -> Property
tintColor val =
  JsonProperty "tintColor" (Json.Encode. val)

momentary :  -> Property
momentary val =
  JsonProperty "momentary" (Json.Encode. val)
