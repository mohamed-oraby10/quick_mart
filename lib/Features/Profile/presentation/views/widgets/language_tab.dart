import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/core/cubits/language_cubit/language_cubit.dart';
import 'package:quick_mart/core/utils/styles.dart';
import 'package:quick_mart/core/utils/theme/extensions/theme_extension.dart';

class LanguageTap extends StatelessWidget {
  const LanguageTap({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LanguageCubit, Locale>(
      builder: (context, locale) {
        return GestureDetector(
          onTap: () {
            context.read<LanguageCubit>().changeLanguage(
              locale.languageCode == 'ar' ? 'en' : 'ar',
            );
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 6.h, horizontal: 16.w),
                child: Text(title, style: Styles.body2Medium),
              ),
              Divider(thickness: 1, color: context.customColors.buttonColor),
            ],
          ),
        );
      },
    );
  }
}
