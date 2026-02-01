import 'package:hive/hive.dart';
import 'package:quick_mart/Features/Home/data/models/review.dart';
part 'product_entity.g.dart';

@HiveType(typeId: 1)
class ProductEntity {
  @HiveField(0)
  final int productId;
  @HiveField(1)
  final String productTitle;
  @HiveField(2)
  final String desc;
  @HiveField(3)
  final num productPrice;
  @HiveField(4)
  final num productRating;
  @HiveField(5)
  final num discount;
  @HiveField(6)
  final List<String> productTags;
  @HiveField(7)
  final List<String> productImages;
  @HiveField(8)
  final List<Review>? reviewsCount;
  @HiveField(9)
  final num stockCount;

  ProductEntity({
    required this.stockCount,
    required this.reviewsCount,
    required this.productId,
    required this.productTitle,
    required this.desc,
    required this.productPrice,
    required this.productRating,
    required this.discount,
    required this.productTags,
    required this.productImages,
  });

  Map<String, dynamic> toJson() {
    return {
      'productId': productId,
      'productTitle': productTitle,
      'desc': desc,
      'productPrice': productPrice,
      'productRating': productRating,
      'discount': discount,
      'productTags': productTags,
      'productImages': productImages,
      'reviewsCount': reviewsCount?.map((review) => review.toJson()).toList(),
      'stockCount': stockCount,
    };
  }
}
