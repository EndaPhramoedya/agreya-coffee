import 'package:freezed_annotation/freezed_annotation.dart';

part 'menu_model.freezed.dart';
part 'menu_model.g.dart';

@freezed
class MenuModel with _$MenuModel {
  factory MenuModel({
    @JsonKey(name: 'meals') @Default(<MenuItemModel>[]) List<MenuItemModel> menuList,
  }) = _MenuModel;

  factory MenuModel.fromJson(Map<String, dynamic> json) => _$MenuModelFromJson(json);
}

@freezed
class MenuItemModel with _$MenuItemModel {
  factory MenuItemModel({
    @JsonKey(name: 'idMeal') @Default('') String id,
    @JsonKey(name: 'strMeal') @Default('') String name,
    @JsonKey(name: 'strMealThumb') @Default('') String imageName,
  }) = _MenuItemModel;

  factory MenuItemModel.fromJson(Map<String, dynamic> json) => _$MenuItemModelFromJson(json);
}
