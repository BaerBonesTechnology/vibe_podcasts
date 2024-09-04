import 'package:go_router/go_router.dart';
import 'package:vibe_podcasts/constants/route_endpoints.dart';
import 'package:vibe_podcasts/ui/screens/home_screen.dart';

final router = GoRouter(routes: [
  GoRoute(path: homeRoute, builder: (_, __) => const HomeScreen())
]);
