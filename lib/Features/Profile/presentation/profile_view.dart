import 'package:flutter/material.dart';
import 'package:quick_mart/Features/Profile/presentation/views/widgets/profile_view_body.dart';
import 'package:quick_mart/core/utils/app_colors.dart';
import 'package:quick_mart/core/widgets/app_bottom_navigation_bar.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.brandCyan,
      body: SafeArea(child: ProfileViewBody()),
      bottomNavigationBar: AppBottomNavigationBar(),
    );
  }
}
