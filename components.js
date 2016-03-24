#!/usr/bin/env node
'use strict';

(function() {
  const reactDocs = require('react-docgen');
  const fs = require("fs");
  const _ = require("lodash");
  const ElmTransformer = require("./elm-transformer");
  const exec = require("child_process").exec;

  var elmTransformer = new ElmTransformer();

  const rnLibPath = "node_modules/react-native/Libraries/";
  const rnModulePathPrefixes = ["Components", "Text"];
  const rnModuleFiles = [
    // "DatePicker/DatePicker.js",
    // "Intent/Intent.js",
    // "Navigation/Navigation.js",
    // "ViewPager/ViewPager.js",
    // "WebView/WebView.js",
    // "DrawerAndroid/DrawerLayoutAndroid.android.js",
    "Components/ActivityIndicatorIOS/ActivityIndicatorIOS.ios.js",
    "Components/Clipboard/Clipboard.js",
    "Components/DatePickerAndroid/DatePickerAndroid.android.js",
    "Components/MapView/MapView.js",
    "Components/Picker/Picker.js",
    "Components/ProgressBarAndroid/ProgressBarAndroid.android.js",
    "Components/ProgressViewIOS/ProgressViewIOS.ios.js",
    "Components/RefreshControl/RefreshControl.js",
    "Components/ScrollView/ScrollView.js",
    "Components/SegmentedControlIOS/SegmentedControlIOS.ios.js",
    "Components/SliderIOS/SliderIOS.ios.js",
    "Components/StatusBar/StatusBar.js",
    "Components/Switch/Switch.js",
    "Components/SwitchAndroid/SwitchAndroid.android.js",
    "Components/SwitchIOS/SwitchIOS.ios.js",
    "Components/TabBarIOS/TabBarIOS.ios.js",
    "Components/ActivityIndicatorIOS/ActivityIndicatorIOS.ios.js",
    "Text/Text.js",
    "Components/TextInput/TextInput.js",
    "Components/TimePickerAndroid/TimePickerAndroid.android.js",
    "Components/ToastAndroid/ToastAndroid.android.js",
    "Components/ToolbarAndroid/ToolbarAndroid.android.js",
    "Components/Touchable/Touchable.js",
    "Components/View/View.js"
  ];
  var rnModulesJSON = {};
  var enumValues = function(jsonValues) {
    return jsonValues.map(function(val) {
      return val.value.replace(/'/g, "").replace(/"/g, "");
    });
  }
  rnModuleFiles.forEach(function(file) {
    var source = fs.readFileSync(rnLibPath + file, 'utf8');
    rnModulePathPrefixes.forEach(function(prefix) {
      file = file.replace(prefix + "/", "");
    });
    var moduleName = file
      .replace(/^([^\/]*\/|)/, "")
      .replace("IOS.ios.js", "")
      .replace("Android.android.js", "")
      .replace(".js", "");
    try {
      var json = reactDocs.parse(source);
      rnModulesJSON[moduleName] = json;

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
  });
  if (Object.keys(rnModulesJSON).length > 0) {
    fs.writeFileSync(
      "components.json",
      JSON.stringify(rnModulesJSON, null, 2),
      "utf8"
    );
  }
  exec("elm-format --yes components", function(error, stdout, stderr) {
    console.log(stdout);
  });
})();
