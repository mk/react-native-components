#!/usr/bin/env node

(function(){
  var reactDocs = require('react-docgen');
  var fs = require("fs");
  var ejs = require("ejs");
  var _ = require("lodash");

  var prefix = "node_modules/react-native/Libraries/Components/";

  var ElmTransformer = {
    module: function(name, content) {
      var template = fs.readFileSync("templates/module.ejs", 'utf8');
      return ejs.render(template, { name: name, content: content });
    },
    property: function(name, type, values) {
      var template = fs.readFileSync("templates/property.ejs", 'utf8');
      return ejs.render(template, { name: name, type: type, values: values });
    }
  }

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
  componentFiles.forEach(function(file) {
    var source = fs.readFileSync(prefix + file, 'utf8');
    var componentName = file
      .replace(/^([^\/]*\/|)/, "")
      .replace("IOS.ios.js", "")
      .replace("Android.android.js", "")
      .replace(".js", "");
    try {
      var json = reactDocs.parse(source);
      componentsJSON[componentName] = json;

      var propNames = Object.keys(json.props);
      var allowedPropTypes = ["bool", "string", "number"];
      var elmPropTypes = {
        "bool": { type: "Bool", encoder: "bool" },
        "string": { type: "String", encoder: "string" },
        "number": { type: "Float", encoder: "float" }
      };

      var elmModuleContent = propNames.map(function(propName) {
        if (allowedPropTypes.indexOf(json.props[propName].type.name) !== -1) {
          var type = elmPropTypes[json.props[propName].type.name];
          return ElmTransformer.property(
            propName,
            type,
            json.props[propName].value
          );
        }
      });
      elmModuleContent = _.compact(elmModuleContent);
      var elmComponent = ElmTransformer.module(
        componentName,
        elmModuleContent.join("\n\n")
      );
      fs.writeFileSync(
        "components/" + componentName + ".elm",
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
