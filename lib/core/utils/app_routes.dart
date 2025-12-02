import 'package:go_router/go_router.dart';
import 'package:quick_mart/Features/Splash/presentation/views/splash_view.dart';

class AppRoutes {
  const AppRoutes._();

  static final router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(path: '/', builder: (context, state) => const SplashView()),
    ],
  );
}
