module RefreshControl (..) where


refreshing : Bool -> Property
refreshing val =
  JsonProperty "refreshing" (Json.Encode.bool val)


title : String -> Property
title val =
  JsonProperty "title" (Json.Encode.string val)


enabled : Bool -> Property
enabled val =
  JsonProperty "enabled" (Json.Encode.bool val)
