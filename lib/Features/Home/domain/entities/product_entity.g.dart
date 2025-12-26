// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ProductEntityAdapter extends TypeAdapter<ProductEntity> {
  @override
  final int typeId = 1;

  @override
  ProductEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ProductEntity(
      stockCount: fields[9] as num,
      reviewsCount: (fields[8] as List?)?.cast<Review>(),
      productId: fields[0] as int,
      productTitle: fields[1] as String,
      desc: fields[2] as String,
      productPrice: fields[3] as num,
      productRating: fields[4] as num,
      discount: fields[5] as num,
      productTags: (fields[6] as List).cast<String>(),
      productImages: (fields[7] as List).cast<String>(),
    );
  }

  @override
  void write(BinaryWriter writer, ProductEntity obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.productId)
      ..writeByte(1)
      ..write(obj.productTitle)
      ..writeByte(2)
      ..write(obj.desc)
      ..writeByte(3)
      ..write(obj.productPrice)
      ..writeByte(4)
      ..write(obj.productRating)
      ..writeByte(5)
      ..write(obj.discount)
      ..writeByte(6)
      ..write(obj.productTags)
      ..writeByte(7)
      ..write(obj.productImages)
      ..writeByte(8)
      ..write(obj.reviewsCount)
      ..writeByte(9)
      ..write(obj.stockCount);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
