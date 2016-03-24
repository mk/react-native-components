module TextInput where
  type TextInputAutoCapitalize
  = TextInputNone
| TextInputSentences
| TextInputWords
| TextInputCharacters

autoCapitalize : TextInputAutoCapitalize -> Property
autoCapitalize val =
  let
    stringValue = case autoCapitalize of
      TextInputAutoCapitalizeNone -> "none"
TextInputAutoCapitalizeSentences -> "sentences"
TextInputAutoCapitalizeWords -> "words"
TextInputAutoCapitalizeCharacters -> "characters"
    jsonValue = Json.Encode.string stringValue
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
  = TextInput"default"
| TextInputEmail-address
| TextInputNumeric
| TextInputPhone-pad
| TextInput"ascii-capable"
| TextInputNumbers-and-punctuation
| TextInputUrl
| TextInputNumber-pad
| TextInputName-phone-pad
| TextInputDecimal-pad
| TextInputTwitter
| TextInputWeb-search

keyboardType : TextInputKeyboardType -> Property
keyboardType val =
  let
    stringValue = case keyboardType of
      TextInputKeyboardType"default" -> ""default""
TextInputKeyboardTypeEmail-address -> "email-address"
TextInputKeyboardTypeNumeric -> "numeric"
TextInputKeyboardTypePhone-pad -> "phone-pad"
TextInputKeyboardType"ascii-capable" -> ""ascii-capable""
TextInputKeyboardTypeNumbers-and-punctuation -> "numbers-and-punctuation"
TextInputKeyboardTypeUrl -> "url"
TextInputKeyboardTypeNumber-pad -> "number-pad"
TextInputKeyboardTypeName-phone-pad -> "name-phone-pad"
TextInputKeyboardTypeDecimal-pad -> "decimal-pad"
TextInputKeyboardTypeTwitter -> "twitter"
TextInputKeyboardTypeWeb-search -> "web-search"
    jsonValue = Json.Encode.string stringValue
  in
    JsonProperty "keyboardType" jsonValue

type TextInputKeyboardAppearance
  = TextInputDefault
| TextInputLight
| TextInputDark

keyboardAppearance : TextInputKeyboardAppearance -> Property
keyboardAppearance val =
  let
    stringValue = case keyboardAppearance of
      TextInputKeyboardAppearanceDefault -> "default"
TextInputKeyboardAppearanceLight -> "light"
TextInputKeyboardAppearanceDark -> "dark"
    jsonValue = Json.Encode.string stringValue
  in
    JsonProperty "keyboardAppearance" jsonValue

type TextInputReturnKeyType
  = TextInputDefault
| TextInputGo
| TextInputGoogle
| TextInputJoin
| TextInputNext
| TextInputRoute
| TextInputSearch
| TextInputSend
| TextInputYahoo
| TextInputDone
| TextInputEmergency-call

returnKeyType : TextInputReturnKeyType -> Property
returnKeyType val =
  let
    stringValue = case returnKeyType of
      TextInputReturnKeyTypeDefault -> "default"
TextInputReturnKeyTypeGo -> "go"
TextInputReturnKeyTypeGoogle -> "google"
TextInputReturnKeyTypeJoin -> "join"
TextInputReturnKeyTypeNext -> "next"
TextInputReturnKeyTypeRoute -> "route"
TextInputReturnKeyTypeSearch -> "search"
TextInputReturnKeyTypeSend -> "send"
TextInputReturnKeyTypeYahoo -> "yahoo"
TextInputReturnKeyTypeDone -> "done"
TextInputReturnKeyTypeEmergency-call -> "emergency-call"
    jsonValue = Json.Encode.string stringValue
  in
    JsonProperty "returnKeyType" jsonValue

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

type TextInputClearButtonMode
  = TextInputNever
| TextInputWhile-editing
| TextInputUnless-editing
| TextInputAlways

clearButtonMode : TextInputClearButtonMode -> Property
clearButtonMode val =
  let
    stringValue = case clearButtonMode of
      TextInputClearButtonModeNever -> "never"
TextInputClearButtonModeWhile-editing -> "while-editing"
TextInputClearButtonModeUnless-editing -> "unless-editing"
TextInputClearButtonModeAlways -> "always"
    jsonValue = Json.Encode.string stringValue
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
