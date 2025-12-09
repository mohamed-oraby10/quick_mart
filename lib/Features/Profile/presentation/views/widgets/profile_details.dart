import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/Features/Profile/presentation/views/widgets/logout_button.dart';
import 'package:quick_mart/Features/Profile/presentation/views/widgets/profile_image.dart';
import 'package:quick_mart/core/utils/app_colors.dart';
import 'package:quick_mart/core/utils/styles.dart';

class ProfileDetails extends StatelessWidget {
  const ProfileDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ProfileImage(),
        SizedBox(width: 8.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Ahmed Raza',
              style: Styles.button1.copyWith(color: AppColors.brandWhite),
            ),
            Text(
              'ahmedraza@gmail.com',
              style: Styles.button2.copyWith(color: AppColors.brandWhite),
            ),
          ],
        ),
        Spacer(),
        LogoutButton(),
      ],
    );
  }
}
