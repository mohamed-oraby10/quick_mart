import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quick_mart/Features/Splash/presentation/views/widgets/splash_view_body.dart';
import 'package:quick_mart/core/utils/app_routes.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      GoRouter.of(context).go(AppRoutes.kOnboardingView);
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SplashViewBody());
  }
}
