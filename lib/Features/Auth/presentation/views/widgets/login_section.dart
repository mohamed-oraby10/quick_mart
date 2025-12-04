import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:quick_mart/Features/Auth/presentation/views/widgets/google_button.dart';
import 'package:quick_mart/Features/Auth/presentation/views/widgets/text_feilds_section.dart';
import 'package:quick_mart/core/utils/app_routes.dart';
import 'package:quick_mart/core/widgets/custom_text_button.dart';

class LoginSection extends StatelessWidget {
  const LoginSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFeildsSection(),
        Align(
          alignment: Alignment.centerRight,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 24.h),
            child: CustomTextButton(
              textButton: 'Forgot password?',
              onTap: () =>
                  GoRouter.of(context).push(AppRoutes.kConfirmationEmailView),
            ),
          ),
        ),
        ElevatedButton(onPressed: () {}, child: Text('Login')),
        SizedBox(height: 16.h),
        GoogleButton(text: 'Login with Google'),
      ],
    );
  }
}
