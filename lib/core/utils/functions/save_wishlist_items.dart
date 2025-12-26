import 'package:hive/hive.dart';
import 'package:quick_mart/Features/Cart/domain/entities/cart_item_entity.dart';
import 'package:quick_mart/core/utils/constants.dart';

void saveWishlistItems(List<CartItemEntity> wishlistProducts) {
  var box = Hive.box<CartItemEntity>(kWishlistBox);
  box.addAll(wishlistProducts);
}
