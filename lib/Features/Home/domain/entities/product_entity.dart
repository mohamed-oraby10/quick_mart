class ProductEntity {
  final String title;
  final String desc;
  final num price;
  final num rating;
  final num discountPercentage;
  final List<String> tags;
  final List<String> images;

  ProductEntity({
    required this.title,
    required this.desc,
    required this.price,
    required this.rating,
    required this.discountPercentage,
    required this.tags,
    required this.images,
  });
}
