class ProductEntity {
  final int productId;
  final String productTitle;
  final String desc;
  final num productPrice;
  final num productRating;
  final num discount;
  final List<String> productTags;
  final List<String> productImages;

  ProductEntity({
    required this.productId,
    required this.productTitle,
    required this.desc,
    required this.productPrice,
    required this.productRating,
    required this.discount,
    required this.productTags,
    required this.productImages,
  });
}
