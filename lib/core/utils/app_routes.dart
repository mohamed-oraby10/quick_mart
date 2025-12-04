import 'package:go_router/go_router.dart';
import 'package:quick_mart/Features/Auth/presentation/views/confirmation_email_view.dart';
import 'package:quick_mart/Features/Auth/presentation/views/create_new_password_view.dart';
import 'package:quick_mart/Features/Auth/presentation/views/email_verification_view.dart';
import 'package:quick_mart/Features/Auth/presentation/views/login_view.dart';
import 'package:quick_mart/Features/Auth/presentation/views/register_view.dart';
import 'package:quick_mart/Features/Auth/presentation/views/successful_password_view.dart';
import 'package:quick_mart/Features/Auth/presentation/views/widgets/verify_email.dart';
import 'package:quick_mart/Features/Home/presentation/views/home_view.dart';
import 'package:quick_mart/Features/Onboarding/presentation/views/onboarding_view.dart';
import 'package:quick_mart/Features/Splash/presentation/views/splash_view.dart';

class AppRoutes {
  const AppRoutes._();
  static const kOnboardingView = '/onboardingView';
  static const kLoginView = '/loginView';
  static const kRegisterView = '/registerView';
  static const kEmailVerificationView = '/emailVerificationView';
  static const kConfirmationEmailView = '/confirmationEmailView';
  static const kVerifyEmail = '/verifyEmail';
  static const kCreateNewPasswordView = '/reateNewPasswordView';
  static const kSuccessfulPasswordView = '/successfulPasswordView';
  static const kHomeView = '/homeView';

  static final router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(path: '/', builder: (context, state) => const SplashView()),
      GoRoute(
        path: kOnboardingView,
        builder: (context, state) => const OnboardingView(),
      ),
      GoRoute(path: kLoginView, builder: (context, state) => const LoginView()),
      GoRoute(
        path: kRegisterView,
        builder: (context, state) => const RegisterView(),
      ),
      GoRoute(
        path: kEmailVerificationView,
        builder: (context, state) => const EmailVerificationView(),
      ),
      GoRoute(
        path: kConfirmationEmailView,
        builder: (context, state) => const ConfirmationEmailView(),
      ),
      GoRoute(
        path: kVerifyEmail,
        builder: (context, state) => const VerifyEmail(),
      ),
      GoRoute(
        path: kCreateNewPasswordView,
        builder: (context, state) => const CreateNewPasswordView(),
      ),
      GoRoute(
        path: kSuccessfulPasswordView,
        builder: (context, state) => const SuccessfulPasswordView(),
      ),
       GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
    ],
  );
}
