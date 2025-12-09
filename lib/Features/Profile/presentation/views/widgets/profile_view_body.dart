import 'package:flutter/material.dart';
import 'package:quick_mart/Features/Profile/presentation/views/widgets/profile_container.dart';
import 'package:quick_mart/Features/Profile/presentation/views/widgets/profile_details.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfileDetails(),


        // Row(
        //   children: [
        //     Icon(
        //       Iconsax.mobile_outline,
        //       size: 24.sp,
        //       color: context.customColors.secondaryColor,
        //     ),
        //     Padding(
        //       padding: EdgeInsets.symmetric(horizontal: 12.w),
        //       child: Text(
        //         'Dark Theme',
        //         style: Styles.body2Medium.copyWith(
        //           color: context.customColors.secondaryColor,
        //         ),
        //       ),
        //     ),
        //     Spacer(),
        //     ModeSwitcher(),
        //   ],
        // ),
        ProfileContainer(),
      ],
    );
  }
}
