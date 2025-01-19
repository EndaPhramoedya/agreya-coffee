part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(false) bool isLoading,
    MenuModel? menuModel,
    MenuCategory? menuCategory,
    @Default('') String category,
  }) = _HomeState;
}
