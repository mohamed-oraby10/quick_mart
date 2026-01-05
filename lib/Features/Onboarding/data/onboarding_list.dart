import 'package:flutter/widgets.dart';
import 'package:quick_mart/Features/Onboarding/data/models/onboarding_model.dart';
import 'package:quick_mart/core/extensions/app_localization_extension.dart';
import 'package:quick_mart/core/utils/assets_data.dart';

List<OnboardingModel> onboardingList(BuildContext context) => [
  OnboardingModel(
    AssetsData.onBoarding1,
    context.locale.explore_products,
    context.locale.explore_products_desc,
  ),
  OnboardingModel(
    AssetsData.onBoarding2,
    context.locale.unlock_exclusive_offers,
    context.locale.unlock_exclusive_offers_desc,
  ),
  OnboardingModel(
    AssetsData.onBoarding3,
    context.locale.safe_secure_payments,
    context.locale.safe_secure_payments_desc,
  ),
];
