import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vibe_podcasts/config/firebase_options.dart';

class Bootstrapper {
  Future<ProviderContainer> initialize() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform
    );
    final container = ProviderContainer(overrides: []);
    return container;
  }
}
