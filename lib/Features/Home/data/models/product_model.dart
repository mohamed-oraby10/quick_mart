import 'package:quick_mart/Features/Home/domain/entities/product_entity.dart';

import 'dimensions.dart';
import 'meta.dart';
import 'review.dart';

class ProductModel extends ProductEntity {
  int? id;
  String? title;
  String? description;
  String? category;
  num? price;
  num? discountPercentage;
  num? rating;
  int? stock;
  List<String>? tags;
  String? brand;
  String? sku;
  int? weight;
  Dimensions? dimensions;
  String? warrantyInformation;
  String? shippingInformation;
  String? availabilityStatus;
  List<Review>? reviews;
  String? returnPolicy;
  int? minimumOrderQuantity;
  Meta? meta;
  List<String>? images;
  String? thumbnail;

  ProductModel({
    this.id,
    this.title,
    this.description,
    this.category,
    this.price,
    this.discountPercentage,
    this.rating,
    this.stock,
    this.tags,
    this.brand,
    this.sku,
    this.weight,
    this.dimensions,
    this.warrantyInformation,
    this.shippingInformation,
    this.availabilityStatus,
    this.reviews,
    this.returnPolicy,
    this.minimumOrderQuantity,
    this.meta,
    this.images,
    this.thumbnail,
  }) : super(
         reviewsCount: reviews,
         productId: id!,
         productTitle: title!,
         desc: description ?? '',
         productPrice: price ?? 0,
         productRating: rating ?? 0,
         discount: discountPercentage ?? 0,
         productTags: tags ?? [],
         productImages: images ?? [],
         stockCount: stock ?? 0,
       );
  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['productId'] as int?,
      title: json['productTitle'] as String?,
      description: json['desc'] as String?,
      price: json['productPrice'] as num?,
      discountPercentage: json['discount'] as num?,
      rating: json['productRating'] as num?,
      stock: json['stockCount'] as int?,
      tags: (json['productTags'] as List<dynamic>?)
          ?.map((e) => e.toString())
          .toList(),
      reviews: (json['reviewsCount'] as List<dynamic>?)
          ?.map((e) => Review.fromJson(e as Map<String, dynamic>))
          .toList(),
      images: (json['productImages'] as List<dynamic>?)
          ?.map((e) => e.toString())
          .toList(),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'title': title,
    'description': description,
    'category': category,
    'price': price,
    'discountPercentage': discountPercentage,
    'rating': rating,
    'stock': stock,
    'tags': tags,
    'brand': brand,
    'sku': sku,
    'weight': weight,
    'dimensions': dimensions?.toJson(),
    'warrantyInformation': warrantyInformation,
    'shippingInformation': shippingInformation,
    'availabilityStatus': availabilityStatus,
    'reviews': reviews?.map((e) => e.toJson()).toList(),
    'returnPolicy': returnPolicy,
    'minimumOrderQuantity': minimumOrderQuantity,
    'meta': meta?.toJson(),
    'images': images,
    'thumbnail': thumbnail,
  };
}
