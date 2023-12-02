import 'package:go_router/go_router.dart';
import 'package:movie_application/src/core/router/app_router.dart';
import 'package:movie_boxoffice/movie_boxoffice.dart';

final class AppPage {
  const AppPage._();

  static const String initialLocation = AppRouter.main;

  static final GoRouter routerConfig = GoRouter(
    routes: [
      GoRoute(
        path: AppRouter.main,
        builder: (context, state) => const MovieBoxofficePage(),
      ),
    ],
    initialLocation: initialLocation,
  );
}
