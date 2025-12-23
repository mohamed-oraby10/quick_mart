import 'package:quick_mart/Features/Cart/domain/repos/cart_repo.dart';
import 'package:quick_mart/Features/Home/domain/entities/product_entity.dart';

class CartRepoImpl implements CartRepo {
  final List<ProductEntity> cartProducts = [];
  @override
  List<ProductEntity> addToCart({
    required ProductEntity product,
    required int quantity,
  }) {
    cartProducts.add(product);
    return cartProducts;
  }

  @override
  void removeFromCart({required ProductEntity product}) {
    cartProducts.remove(product);
  }
}
