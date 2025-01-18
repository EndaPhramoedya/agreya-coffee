import 'package:freezed_annotation/freezed_annotation.dart';

part 'menu_category_model.freezed.dart';
part 'menu_category_model.g.dart';

@freezed
class MenuCategory with _$MenuCategory {
  factory MenuCategory({
    @JsonKey(name: 'categories') required List<CategoryListModel> categoryList,
  }) = _MenuCategory;

  factory MenuCategory.fromJson(Map<String, dynamic> json) => _$MenuCategoryFromJson(json);
}

@freezed
class CategoryListModel with _$CategoryListModel {
  factory CategoryListModel({
    @JsonKey(name: 'idCategory') required bool id,
    @JsonKey(name: 'strCategory') required bool name,
    @JsonKey(name: 'strCategoryThumb') required String imageName,
    @JsonKey(name: 'strCategoryDescription') required String description,
  }) = _CategoryListModel;

  factory CategoryListModel.fromJson(Map<String, dynamic> json) => _$CategoryListModelFromJson(json);
}
