#!/usr/bin/env node

(function() {
  var reactDocs = require('react-docgen');
  var fs = require("fs");
  var _ = require("lodash");
  var ElmTransformer = require("./elm-transformer");

  var elmTransformer = new ElmTransformer();

  var prefix = "node_modules/react-native/Libraries/Components/";

  var componentFiles = [
    // "DatePicker/DatePicker.js",
    // "Intent/Intent.js",
    // "Navigation/Navigation.js",
    // "ViewPager/ViewPager.js",
    // "WebView/WebView.js"
    "ActivityIndicatorIOS/ActivityIndicatorIOS.ios.js",
    "Clipboard/Clipboard.js",
    "DatePickerAndroid/DatePickerAndroid.android.js",
    "DrawerAndroid/DrawerLayoutAndroid.android.js",
    "MapView/MapView.js",
    "Picker/Picker.js",
    "ProgressBarAndroid/ProgressBarAndroid.android.js",
    "ProgressViewIOS/ProgressViewIOS.ios.js",
    "RefreshControl/RefreshControl.js",
    "ScrollView/ScrollView.js",
    "SegmentedControlIOS/SegmentedControlIOS.ios.js",
    "SliderIOS/SliderIOS.ios.js",
    "StatusBar/StatusBar.js",
    "Switch/Switch.js",
    "SwitchAndroid/SwitchAndroid.android.js",
    "SwitchIOS/SwitchIOS.ios.js",
    "TabBarIOS/TabBarIOS.ios.js",
    "TextInput/TextInput.js",
    "TimePickerAndroid/TimePickerAndroid.android.js",
    "ToastAndroid/ToastAndroid.android.js",
    "ToolbarAndroid/ToolbarAndroid.android.js",
    "Touchable/Touchable.js",
    "View/View.js"
  ];
  var componentsJSON = {};
  var enumValues = function(jsonValues) {
    return jsonValues.map(function(val) {
      return val.value.replace(/'/g, "");
    });
  }
  componentFiles.forEach(function(file) {
    var source = fs.readFileSync(prefix + file, 'utf8');
    var moduleName = file
      .replace(/^([^\/]*\/|)/, "")
      .replace("IOS.ios.js", "")
      .replace("Android.android.js", "")
      .replace(".js", "");
    try {
      var json = reactDocs.parse(source);
      componentsJSON[moduleName] = json;

      var propNames = Object.keys(json.props);
      var allowedPropTypes = ["bool", "string", "number", "enum"];
      var elmPropTypes = {
        "bool": { type: "Bool", encoder: "bool" },
        "string": { type: "String", encoder: "string" },
        "number": { type: "Float", encoder: "float" }
      };

      var elmModuleContent = propNames.map(function(propName) {
        var propType = json.props[propName].type.name;
        if (allowedPropTypes.indexOf(propType) !== -1) {
          if (propType === "enum") {
            var values = json.props[propName].type.value;
            if (_.isArray(values)) { // Ignore non-Array enums for now
              return elmTransformer.enumProperty(
                propName,
                moduleName,
                enumValues(json.props[propName].type.value)
              );
            }
          } else {
            return elmTransformer.property(
              propName,
              elmPropTypes[propType]
            );
          }
        }
      });
      elmModuleContent = _.compact(elmModuleContent);
      var elmComponent = elmTransformer.module(
        moduleName,
        elmModuleContent.join("\n\n")
      );
      fs.writeFileSync(
        "components/" + moduleName + ".elm",
        elmComponent,
        "utf8"
      );
    } catch (e) {
      console.log(e);
    }
    fs.writeFileSync(
      "components.json",
      JSON.stringify(componentsJSON, null, 2),
      "utf8"
    );
  });
})();
