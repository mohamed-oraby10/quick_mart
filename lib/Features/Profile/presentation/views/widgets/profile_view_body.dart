import 'package:flutter/material.dart';
import 'package:quick_mart/Features/Profile/presentation/views/widgets/profile_container.dart';
import 'package:quick_mart/Features/Profile/presentation/views/widgets/profile_details.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [ProfileDetails(), ProfileContainer()]);
  }
}
