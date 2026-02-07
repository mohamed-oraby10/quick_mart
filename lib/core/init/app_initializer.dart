import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:quick_mart/Features/Cart/domain/entities/cart_item_entity.dart';
import 'package:quick_mart/Features/Home/data/models/review.dart';
import 'package:quick_mart/Features/Home/domain/entities/category_entity.dart';
import 'package:quick_mart/Features/Home/domain/entities/product_entity.dart';
import 'package:quick_mart/Features/Profile/domain/entities/user_entity.dart';
import 'package:quick_mart/core/utils/constants.dart';
import 'package:quick_mart/core/utils/functions/setup_service_locator.dart';
import 'package:quick_mart/firebase_options.dart';

class AppInitializer {
  static Future<void> init() async {
    await initFirebase();
    await initHydratedBloc();
    await setupLocator();
    await initHive();
  }

  static Future<void> initFirebase() async {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  }

  static Future<void> initHive() async {
    await Hive.initFlutter();
    registerAdapters();
    await openBoxes();
  }

  static void registerAdapters() {
    Hive.registerAdapter(UserEntityAdapter());
    Hive.registerAdapter(ReviewAdapter());
    Hive.registerAdapter(ProductEntityAdapter());
    Hive.registerAdapter(CartItemEntityAdapter());
    Hive.registerAdapter(CategoryEntityAdapter());
  }

  static Future<void> openBoxes() async {
    await Hive.openBox<UserEntity>(kUsersBox);
    await Hive.openBox<CartItemEntity>(kWishlistBox);
    await Hive.openBox<ProductEntity>(kLeatestProductsBox);
    await Hive.openBox<CategoryEntity>(kCategoriesBox);
    await Hive.openBox(kProductsByCategoryBox);
  }

  static Future<void> setupLocator() async {
    await setupServiceLocator();
  }

  static Future<void> initHydratedBloc() async {
    HydratedBloc.storage = await HydratedStorage.build(
      storageDirectory: kIsWeb
          ? HydratedStorageDirectory.web
          : HydratedStorageDirectory((await getTemporaryDirectory()).path),
    );
  }
}
