import 'package:freezed_annotation/freezed_annotation.dart';

part 'menu_category_model.freezed.dart';
part 'menu_category_model.g.dart';

@freezed
class MenuCategory with _$MenuCategory {
  factory MenuCategory({
    @JsonKey(name: 'categories') required List<CategoryItemModel> categoryList,
  }) = _MenuCategory;

  factory MenuCategory.fromJson(Map<String, dynamic> json) => _$MenuCategoryFromJson(json);
}

@freezed
class CategoryItemModel with _$CategoryItemModel {
  factory CategoryItemModel({
    @JsonKey(name: 'idCategory') required String id,
    @JsonKey(name: 'strCategory') required String name,
    @JsonKey(name: 'strCategoryThumb') required String imageName,
    @JsonKey(name: 'strCategoryDescription') required String description,
  }) = _CategoryItemModel;

  factory CategoryItemModel.fromJson(Map<String, dynamic> json) => _$CategoryItemModelFromJson(json);
}
