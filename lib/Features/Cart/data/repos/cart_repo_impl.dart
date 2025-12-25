import 'package:quick_mart/Features/Cart/domain/entities/cart_item_entity.dart';
import 'package:quick_mart/Features/Cart/domain/repos/cart_repo.dart';
import 'package:quick_mart/Features/Home/domain/entities/product_entity.dart';

class CartRepoImpl implements CartRepo {
  final List<CartItemEntity> cartItems = [];
  @override
  List<CartItemEntity> addToCart({
    required ProductEntity product,
    required int quantity,
  }) {
    final index = cartItems.indexWhere(
      (item) => item.product.productId == product.productId,
    );
    if (index != -1) {
      final exitstingItem = cartItems[index];
      cartItems[index] = exitstingItem.copyWith(
        quantity: exitstingItem.quantity + quantity,
      );
    } else  {
      cartItems.add(CartItemEntity(product: product, quantity: quantity));
    }
    return List.from(cartItems);
  }

  @override
  List<CartItemEntity> removeFromCart({required ProductEntity product}) {
    cartItems.removeWhere(
      (item) => item.product.productId == product.productId,
    );
    return List.from(cartItems);
  }

  @override
  List<CartItemEntity> getCartProducts() {
    return List.from(cartItems);
  }
}
