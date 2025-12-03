import 'package:go_router/go_router.dart';
import 'package:quick_mart/Features/Auth/presentation/views/login_view.dart';
import 'package:quick_mart/Features/Auth/presentation/views/register_view.dart';
import 'package:quick_mart/Features/Onboarding/presentation/views/onboarding_view.dart';
import 'package:quick_mart/Features/Splash/presentation/views/splash_view.dart';

class AppRoutes {
  const AppRoutes._();
  static const kOnboardingView = '/onboardingView';
    static const kLoginView = '/loginView';
        static const kRegisterView = '/registerView';


  static final router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(path: '/', builder: (context, state) => const SplashView()),
      GoRoute(path: kOnboardingView, builder: (context, state) => const OnboardingView()),
      GoRoute(path: kLoginView, builder: (context, state) => const LoginView()),
            GoRoute(path: kRegisterView, builder: (context, state) => const RegisterView()),

    ],
  );
}
