import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vibe_podcasts/config/initialize_app.dart';
import 'package:vibe_podcasts/ui/theme/vibe_theme.dart';

import 'config/router.dart';

void main() async {
  await Bootstrapper().initialize().then((container) {
    runApp(
      UncontrolledProviderScope(
          container: container,
          child: MaterialApp.router(
            routerConfig: router,
            theme: vibeThemeData,
          )),
    );
  });
}
