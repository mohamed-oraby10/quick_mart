import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:quick_mart/Features/Cart/domain/repos/cart_repo.dart';
import 'package:quick_mart/Features/Home/domain/entities/product_entity.dart';

part 'remove_from_cart_state.dart';

class RemoveFromCartCubit extends Cubit<RemoveFromCartState> {
  RemoveFromCartCubit(this.cartRepo) : super(RemoveFromCartInitial());
  final CartRepo cartRepo;
  void removeFromCart({required ProductEntity product}) {
    cartRepo.removeFromCart(product: product);
    emit(RemoveFromCartSuccess());
  }
}
