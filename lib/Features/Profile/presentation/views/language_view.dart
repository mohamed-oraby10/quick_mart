import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/Features/Profile/presentation/views/widgets/language_tab.dart';
import 'package:quick_mart/core/cubits/language_cubit/language_cubit.dart';
import 'package:quick_mart/core/extensions/app_localization_extension.dart';
import 'package:quick_mart/core/widgets/custom_app_bar.dart';

class LanguageView extends StatelessWidget {
  const LanguageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<LanguageCubit, Locale>(
        builder: (context, locale) {
          return Column(
            children: [
              SizedBox(height: 44.h),
              CustomAppBar(text: context.locale.language),
              LanguageTap(
                title: 'العربية',
                onTap: () {
                  context.read<LanguageCubit>().changeLanguage('ar');
                },
              ),
              LanguageTap(
                title: 'English',
                onTap: () {
                  context.read<LanguageCubit>().changeLanguage('en');
                },
              ),
            ],
          );
        },
      ),
    );
  }
}
