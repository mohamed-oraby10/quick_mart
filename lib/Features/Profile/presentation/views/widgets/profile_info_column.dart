import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/Features/Profile/presentation/views/widgets/account_management_section.dart';
import 'package:quick_mart/Features/Profile/presentation/views/widgets/personal_info_section.dart';

class ProfileInfoColumn extends StatelessWidget {
  const ProfileInfoColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 24.h),
          PersonalInformationSection(),
          SizedBox(height: 36.h),
          AccountManagementSection(),
        ],
      ),
    );
  }
}
