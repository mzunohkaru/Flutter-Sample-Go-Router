import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_web_plugins/url_strategy.dart';

import 'app.dart';

Future<void> main() async {
  setUrlStrategy(PathUrlStrategy());
  runApp(
    const ProviderScope(child: MainApp()),
  );
}
