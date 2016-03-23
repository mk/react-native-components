#!/usr/bin/env node

(function(){
  var React = require("react-native");
  var components = {};
  exports.list = components.list = function() {
    console.log("foo");
  };
  if (!module.parent) {
    components.list();
  }
})();
