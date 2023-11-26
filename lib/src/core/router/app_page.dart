import 'package:go_router/go_router.dart';
import 'package:movie_application/src/core/router/app_router.dart';
import 'package:movie_application/src/features/main/presentation/pages/main_page/main_page.dart';

final class AppPage {
  const AppPage._();

  static const String initialLocation = AppRouter.main;

  static final GoRouter routerConfig = GoRouter(
    routes: [
      GoRoute(
        path: AppRouter.main,
        builder: (context, state) => const MainPage(),
      ),
    ],
    initialLocation: initialLocation,
  );
}
