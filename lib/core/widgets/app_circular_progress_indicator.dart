import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/core/utils/app_colors.dart';
import 'package:quick_mart/core/utils/theme/extensions/theme_extension.dart';

class AppCircularProgressIndicator extends StatelessWidget {
  const AppCircularProgressIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 60.h,
        child: CupertinoActivityIndicator(
          color: context.isDarkMode
              ? AppColors.brandCyan
              : AppColors.brandBlack,
          radius: 14.r,
        ),
      ),
    );
  }
}
