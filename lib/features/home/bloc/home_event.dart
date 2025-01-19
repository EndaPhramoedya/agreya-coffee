part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.getMenuList({
    @Default('') String filterName,
  }) = _GetMenuList;

  const factory HomeEvent.getCategoryList() = _GetCategoryList;

  const factory HomeEvent.onSelectCategory({
    required String category,
  }) = _OnSelectCategory;
}
