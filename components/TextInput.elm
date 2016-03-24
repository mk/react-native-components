module TextInput where

type TextInputAutoCapitalize
  = TextInputAutoCapitalizeNone
| TextInputAutoCapitalizeSentences
| TextInputAutoCapitalizeWords
| TextInputAutoCapitalizeCharacters

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
  = TextInputKeyboardType"default"
| TextInputKeyboardTypeEmailAddress
| TextInputKeyboardTypeNumeric
| TextInputKeyboardTypePhonePad
| TextInputKeyboardType"asciiCapable"
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
    stringValue = case keyboardType of
      TextInputKeyboardType"default" -> ""default""
TextInputKeyboardTypeEmailAddress -> "email-address"
TextInputKeyboardTypeNumeric -> "numeric"
TextInputKeyboardTypePhonePad -> "phone-pad"
TextInputKeyboardType"asciiCapable" -> ""ascii-capable""
TextInputKeyboardTypeNumbersAndPunctuation -> "numbers-and-punctuation"
TextInputKeyboardTypeUrl -> "url"
TextInputKeyboardTypeNumberPad -> "number-pad"
TextInputKeyboardTypeNamePhonePad -> "name-phone-pad"
TextInputKeyboardTypeDecimalPad -> "decimal-pad"
TextInputKeyboardTypeTwitter -> "twitter"
TextInputKeyboardTypeWebSearch -> "web-search"
    jsonValue = Json.Encode.string stringValue
  in
    JsonProperty "keyboardType" jsonValue

type TextInputKeyboardAppearance
  = TextInputKeyboardAppearanceDefault
| TextInputKeyboardAppearanceLight
| TextInputKeyboardAppearanceDark

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
TextInputReturnKeyTypeEmergencyCall -> "emergency-call"
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
  = TextInputClearButtonModeNever
| TextInputClearButtonModeWhileEditing
| TextInputClearButtonModeUnlessEditing
| TextInputClearButtonModeAlways

clearButtonMode : TextInputClearButtonMode -> Property
clearButtonMode val =
  let
    stringValue = case clearButtonMode of
      TextInputClearButtonModeNever -> "never"
TextInputClearButtonModeWhileEditing -> "while-editing"
TextInputClearButtonModeUnlessEditing -> "unless-editing"
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
