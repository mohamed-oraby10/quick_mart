import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:quick_mart/core/utils/app_routes.dart';
import 'package:quick_mart/core/utils/theme/extensions/theme_extension.dart';

class AppBottomNavigationBar extends StatelessWidget {
  const AppBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    int currentIndex = 4;
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(color: context.customColors.buttonColor, width: 1.w),
        ),
      ),
      child: BottomNavigationBar(
        onTap: (currentIndex) {
          GoRouter.of(context).push(AppRoutes.kProfileView);
        },
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(
              currentIndex == 0 ? Iconsax.home_2_bold : Iconsax.home_2_outline,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Categories',
            icon: Icon(
              currentIndex == 1
                  ? Iconsax.category_2_bold
                  : Iconsax.category_2_outline,
            ),
          ),
          BottomNavigationBarItem(
            label: 'My Cart',
            icon: Icon(
              currentIndex == 2
                  ? Iconsax.shopping_cart_bold
                  : Iconsax.shopping_cart_outline,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Wishlist',
            icon: Icon(
              currentIndex == 3 ? Iconsax.heart_bold : Iconsax.heart_outline,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Profile',
            icon: Icon(
              currentIndex == 4
                  ? Iconsax.profile_tick_bold
                  : Iconsax.profile_tick_outline,
            ),
          ),
        ],
      ),
    );
  }
}
