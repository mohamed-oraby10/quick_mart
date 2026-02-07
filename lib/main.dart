import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
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
import 'package:quick_mart/quick_mart.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: kIsWeb
        ? HydratedStorageDirectory.web
        : HydratedStorageDirectory((await getTemporaryDirectory()).path),
  );
  await setupServiceLocator();
  await Hive.initFlutter();
  Hive.registerAdapter(UserEntityAdapter());
  Hive.registerAdapter(ReviewAdapter());
  Hive.registerAdapter(ProductEntityAdapter());
  Hive.registerAdapter(CartItemEntityAdapter());
  Hive.registerAdapter(CategoryEntityAdapter());
  await Hive.openBox<UserEntity>(kUsersBox);
  await Hive.openBox<CartItemEntity>(kWishlistBox);
  await Hive.openBox<ProductEntity>(kLeatestProductsBox);
  await Hive.openBox<CategoryEntity>(kCategoriesBox);
  await Hive.openBox(kProductsByCategoryBox);

  runApp(const QuickMart());
}
