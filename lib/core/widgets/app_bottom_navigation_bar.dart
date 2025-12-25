import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:quick_mart/core/utils/app_routes.dart';
import 'package:quick_mart/core/utils/theme/extensions/theme_extension.dart';

class AppBottomNavigationBar extends StatefulWidget {
  const AppBottomNavigationBar({super.key});

  @override
  State<AppBottomNavigationBar> createState() => _AppBottomNavigationBarState();
}

class _AppBottomNavigationBarState extends State<AppBottomNavigationBar> {
  late int currentIndex;
  final List<String> routes = [
    AppRoutes.kHomeView,
    AppRoutes.kCategoriesView,
    AppRoutes.kCartView,
    AppRoutes.kWishlist,
    AppRoutes.kProfileView,
  ];
  final List<Map<String, dynamic>> itemsData = [
    {
      'label': 'Home',
      'icon': Iconsax.home_2_outline,
      'activeIcon': Iconsax.home_2_bold,
    },
    {
      'label': 'Categories',
      'icon': Iconsax.category_2_outline,
      'activeIcon': Iconsax.category_2_bold,
    },
    {
      'label': 'My Cart',
      'icon': Iconsax.shopping_cart_outline,
      'activeIcon': Iconsax.shopping_cart_bold,
    },
    {
      'label': 'Wishlist',
      'icon': Iconsax.heart_outline,
      'activeIcon': Iconsax.heart_bold,
    },
    {
      'label': 'Profile',
      'icon': Iconsax.profile_tick_outline,
      'activeIcon': Iconsax.profile_tick_bold,
    },
  ];

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final location = GoRouterState.of(context).uri.toString();
    setState(() {
      currentIndex = routes.indexWhere((r) => location.startsWith(r));
      if (currentIndex == -1) currentIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(color: context.customColors.buttonColor, width: 1.w),
        ),
      ),
      child: BottomNavigationBar(
        onTap: (value) {
          if (value == currentIndex) return;
          final targetRoute = routes[value];
          setState(() {
            currentIndex = value;
          });
          GoRouter.of(context).push(targetRoute);
        },
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(itemsData.length, (index) {
          final item = itemsData[index];
          return BottomNavigationBarItem(
            icon: currentIndex == index
                ? Icon(item['activeIcon'])
                : Icon(item['icon']),
            label: item['label'],
          );
        }),
      ),
    );
  }
}
