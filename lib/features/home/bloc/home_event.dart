part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.getMenuList({
    @Default('') String filterName,
    @Default('') String filterCategory,
  }) = _GetMenuList;
}
