import 'package:quick_mart/Features/Home/domain/entities/product_entity.dart';

sealed class CartState {}

final class CartInitial extends CartState {}
final class CartLoaded extends CartState {
  List<ProductEntity> products;
  CartLoaded(this.products);
}