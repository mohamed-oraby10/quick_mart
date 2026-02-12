import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_mart/Features/Cart/domain/entities/cart_item_entity.dart';
import 'package:quick_mart/Features/Cart/domain/repos/cart_repo.dart';
import 'package:quick_mart/Features/Cart/presentation/manager/cart_cubit/cart_state.dart';
import 'package:quick_mart/Features/Home/domain/entities/product_entity.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit(this.cartRepo) : super(CartInitial());

  final CartRepo cartRepo;

  void loadCart() {
    emit(CartLoaded(cartRepo.getCartProducts()));
  }

  void addToCart({required ProductEntity product, required int quantity}) {
    var result = cartRepo.addToCart(product: product, quantity: quantity);
    emit(CartLoaded(result));
  }

  void decreaseQuantity({required ProductEntity product}) {
    cartRepo.decreaseQuantity(product: product);
    emit(CartLoaded(cartRepo.getCartProducts()));
  }

  void remove(ProductEntity product) {
    final products = cartRepo.removeFromCart(product: product);
    emit(CartLoaded(products));
  }

  void toggleItem(int productId) {
    cartRepo.toggleSelection(productId: productId);
    emit(CartLoaded(cartRepo.getCartProducts()));
  }

  double calculateTotal(List<CartItemEntity> products) {
    return products
        .where((item) => item.isSelected)
        .fold<double>(
          0,
          (sum, item) => sum + item.quantity * item.product.productPrice,
        );
  }

  void clearCart() {
    emit(CartLoaded([]));
  }
}
