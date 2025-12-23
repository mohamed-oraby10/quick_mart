import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:quick_mart/Features/Cart/domain/repos/cart_repo.dart';
import 'package:quick_mart/Features/Home/domain/entities/product_entity.dart';

part 'add_to_cart_state.dart';

class AddToCartCubit extends Cubit<AddToCartState> {
  AddToCartCubit(this.cartRepo) : super(AddToCartInitial());
  final CartRepo cartRepo;
  void addToCart({required ProductEntity product, required int quantity}) {
    var result = cartRepo.addToCart(product: product, quantity: quantity);
    emit(AddToCartSuccess(cartProducts: result));
  }
}
