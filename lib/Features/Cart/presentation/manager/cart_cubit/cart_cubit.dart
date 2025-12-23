import 'package:flutter_bloc/flutter_bloc.dart';
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
    cartRepo.addToCart(product: product, quantity: quantity);
    emit(CartLoaded(cartRepo.getCartProducts()));
  }

  void remove(ProductEntity product) {
    final products = cartRepo.removeFromCart(product: product);
    emit(CartLoaded(products));
  }
}
