import 'package:flutter/material.dart';
import 'package:go_router_sample/GO_ROUTER_TAB/app.dart';
import 'package:flutter_web_plugins/url_strategy.dart';

void main() {
  setUrlStrategy(PathUrlStrategy());
  runApp(const App());
}
