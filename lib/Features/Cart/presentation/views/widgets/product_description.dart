import 'package:flutter/material.dart';
import 'package:quick_mart/core/utils/app_colors.dart';
import 'package:quick_mart/core/utils/styles.dart';
import 'package:quick_mart/core/utils/theme/extensions/theme_extension.dart';
import 'package:readmore/readmore.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return ReadMoreText(
      'Constructed with high-quality silicone material, the Loop Silicone Strong Magnetic Watch ensures a comfortable and secure fit on your wrist. The soft and flexible silicone is gentle on the skin, making it ideal for extended wear. Its lightweight design allows for a seamless blend of comfort and durability.One of the standout features of this watch band is its strong magnetic closure. The powerful magnets embedded within the band provide a secure and reliable connection, ensuring that your smartwatch stays firmly in place throughout the day. Say goodbye to worries about accidental detachment or slippage - the magnetic closure offers a peace of mind for active individuals on the go.The Loop Silicone Strong Magnetic Watch Band is highly versatile, compatible with a wide range of smartwatch models. Its adjustable strap length allows for a customizable fit, catering to various wrist sizes. Whether you\'re engaging in intense workouts or attending formal occasions, this watch band effortlessly adapts to your style and activity level.',
      trimLines: 5,
      trimMode: TrimMode.Line,
      trimCollapsedText: 'Read more',
      trimExpandedText: 'Show less',
      moreStyle: Styles.body2Regular.copyWith(color: AppColors.brandCyan),
      lessStyle: Styles.body2Regular.copyWith(color: AppColors.brandCyan),
      style: Styles.body2Medium.copyWith(
        color: context.customColors.secondaryColor,
      ),
    );
  }
}
