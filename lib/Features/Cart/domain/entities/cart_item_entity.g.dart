// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_item_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CartItemEntityAdapter extends TypeAdapter<CartItemEntity> {
  @override
  final int typeId = 20;

  @override
  CartItemEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CartItemEntity(
      isSelected: fields[2] as bool,
      product: fields[0] as ProductEntity,
      quantity: fields[1] as int,
      userId: fields[3] as String,
    );
  }

  @override
  void write(BinaryWriter writer, CartItemEntity obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.product)
      ..writeByte(1)
      ..write(obj.quantity)
      ..writeByte(2)
      ..write(obj.isSelected)
      ..writeByte(3)
      ..write(obj.userId);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CartItemEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
