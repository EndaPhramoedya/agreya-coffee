import 'dart:async';

import 'package:agreya_coffee/di/di.dart';
import 'package:agreya_coffee/features/app.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  runZonedGuarded<Future<void>>(
    () async {
      // Init DI
      await initDependencies();

      runApp(const App());
    },
    (Object error, StackTrace stack) async {
      /// TODO: catch error here
    },
  );
}
