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
    return List.from(cartProducts);
  }

  @override
  List<ProductEntity> removeFromCart({required ProductEntity product}) {
    cartProducts.remove(product);
    return List.from(cartProducts);
  }

  
  @override
  List<ProductEntity> getCartProducts() {
    return List.from(cartProducts); 
  }
}
