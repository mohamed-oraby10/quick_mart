import 'package:hive/hive.dart';
part 'category_entity.g.dart';

@HiveType(typeId: 4)
class CategoryEntity {
  @HiveField(0)
  final String categoryName;

  CategoryEntity({required this.categoryName});
}
