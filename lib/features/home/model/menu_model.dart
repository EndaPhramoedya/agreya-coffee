import 'package:freezed_annotation/freezed_annotation.dart';

part 'menu_model.freezed.dart';
part 'menu_model.g.dart';

@freezed
class MenuModel with _$MenuModel {
  factory MenuModel({
    @JsonKey(name: 'menus') required List<MenuListModel> menuList,
  }) = _MenuModel;

  factory MenuModel.fromJson(Map<String, dynamic> json) => _$MenuModelFromJson(json);
}

@freezed
class MenuListModel with _$MenuListModel {
  factory MenuListModel({
    @JsonKey(name: 'idMeal') required bool id,
    @JsonKey(name: 'strMeal') required bool name,
    @JsonKey(name: 'strMealThumb') required String imageName,
  }) = _MenuListModel;

  factory MenuListModel.fromJson(Map<String, dynamic> json) => _$MenuListModelFromJson(json);
}
