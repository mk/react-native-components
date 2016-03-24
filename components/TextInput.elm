module TextInput where
  
autoCorrect : Bool -> Property
autoCorrect val =
  JsonProperty "autoCorrect" (Json.Encode.bool val)
autoFocus : Bool -> Property
autoFocus val =
  JsonProperty "autoFocus" (Json.Encode.bool val)
editable : Bool -> Property
editable val =
  JsonProperty "editable" (Json.Encode.bool val)



maxLength : Float -> Property
maxLength val =
  JsonProperty "maxLength" (Json.Encode.float val)
numberOfLines : Float -> Property
numberOfLines val =
  JsonProperty "numberOfLines" (Json.Encode.float val)
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

value : String -> Property
value val =
  JsonProperty "value" (Json.Encode.string val)
defaultValue : String -> Property
defaultValue val =
  JsonProperty "defaultValue" (Json.Encode.string val)

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
