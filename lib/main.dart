import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:quick_mart/Features/Cart/data/repos/cart_repo_impl.dart';
import 'package:quick_mart/Features/Cart/domain/entities/cart_item_entity.dart';
import 'package:quick_mart/Features/Cart/presentation/manager/cart_cubit/cart_cubit.dart';
import 'package:quick_mart/Features/Home/data/models/review.dart';
import 'package:quick_mart/Features/Home/data/repos/home_repo_impl.dart';
import 'package:quick_mart/Features/Home/domain/entities/product_entity.dart';
import 'package:quick_mart/Features/Home/domain/use_cases/fetch_leatest_products_use_case.dart';
import 'package:quick_mart/Features/Home/domain/use_cases/fetch_products_by_category_use_case.dart';
import 'package:quick_mart/Features/Home/domain/use_cases/filter_products_use_case.dart';
import 'package:quick_mart/Features/Home/domain/use_cases/find_searched_products_use_case.dart';
import 'package:quick_mart/Features/Home/presentation/manager/fetch_leatest_product_cubit/fetch_leatest_products_cubit.dart';
import 'package:quick_mart/Features/Home/presentation/manager/fetch_products_by_category_cubit/fetch_products_by_category_cubit.dart';
import 'package:quick_mart/Features/Home/presentation/manager/find_searced_products_cubit/find_searched_products_cubit.dart';
import 'package:quick_mart/Features/Profile/domain/entities/user_entity.dart';
import 'package:quick_mart/Features/Wishlist/data/data_sources/wishlist_local_data_source.dart';
import 'package:quick_mart/Features/Wishlist/data/repos/wishlist_repo_impl.dart';
import 'package:quick_mart/Features/Wishlist/presentation/manager/cubit/wishlist_cubit.dart';
import 'package:quick_mart/core/cubits/language_cubit/language_cubit.dart';
import 'package:quick_mart/core/utils/app_fonts.dart';
import 'package:quick_mart/core/utils/app_routes.dart';
import 'package:quick_mart/core/utils/constants.dart';
import 'package:quick_mart/core/utils/functions/setup_service_locator.dart';
import 'package:quick_mart/core/utils/theme/theme_cubit/theme_cubit.dart';
import 'package:quick_mart/core/utils/theme/theme_data/theme_data_dark.dart';
import 'package:quick_mart/core/utils/theme/theme_data/theme_data_light.dart';
import 'package:quick_mart/firebase_options.dart';
import 'package:quick_mart/l10n/app_localizations.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: kIsWeb
        ? HydratedStorageDirectory.web
        : HydratedStorageDirectory((await getTemporaryDirectory()).path),
  );
  setupServiceLocator();
  await Hive.initFlutter();
  Hive.registerAdapter(UserEntityAdapter());
  await Hive.openBox<UserEntity>(kUsersBox);
  Hive.registerAdapter(ReviewAdapter());
  Hive.registerAdapter(ProductEntityAdapter());
  Hive.registerAdapter(CartItemEntityAdapter());
  await Hive.openBox<CartItemEntity>(kWishlistBox);
  runApp(const QuickMart());
}

class QuickMart extends StatelessWidget {
  const QuickMart({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ThemeCubit>(create: (context) => ThemeCubit()),
        BlocProvider<LanguageCubit>(create: (context) => LanguageCubit()),
        BlocProvider<CartCubit>(create: (context) => CartCubit(CartRepoImpl())),
        BlocProvider<FetchProductsByCategoryCubit>(
          create: (context) => FetchProductsByCategoryCubit(
            FetchProductsByCategoryUseCase(getIt.get<HomeRepoImpl>()),
          ),
        ),
        BlocProvider<FindSearchedProductsCubit>(
          create: (context) => FindSearchedProductsCubit(
            FindSearchedProductsUseCase(getIt.get<HomeRepoImpl>()),
          ),
        ),
        BlocProvider<FetchLeatestProductsCubit>(
          create: (context) => FetchLeatestProductsCubit(
            FetchLeatestProductsUseCase(getIt.get<HomeRepoImpl>()),
            FilterProductsUseCase(getIt.get<HomeRepoImpl>()),
          ),
        ),

        BlocProvider(
          create: (context) =>
              WishlistCubit(WishlistRepoImpl(WishlistLocalDataSourceImpl()))
                ..loadWishlist(),
        ),
      ],
      child: ScreenUtilInit(
        designSize: Size(360, 800),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return BlocBuilder<ThemeCubit, ThemeMode>(
            builder: (context, newMode) {
              return BlocBuilder<LanguageCubit, Locale>(
                builder: (context, locale) {
                  final isArabic = locale.languageCode == 'ar';
                  return MaterialApp.router(
                    locale: locale,
                    supportedLocales: const [Locale('ar'), Locale('en')],
                    localizationsDelegates: const [
                      AppLocalizations.delegate,
                      GlobalMaterialLocalizations.delegate,
                      GlobalWidgetsLocalizations.delegate,
                      GlobalCupertinoLocalizations.delegate,
                    ],
                    debugShowCheckedModeBanner: false,
                    title: 'Flutter Demo',
                    darkTheme: getDarkTheme(
                      fontName: isArabic
                          ? AppFonts.cairo
                          : AppFonts.plusJakartaSans,
                    ),
                    theme: getLightTheme(
                      fontName: isArabic
                          ? AppFonts.cairo
                          : AppFonts.plusJakartaSans,
                    ),
                    themeMode: newMode,
                    routerConfig: AppRoutes.router,
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}
