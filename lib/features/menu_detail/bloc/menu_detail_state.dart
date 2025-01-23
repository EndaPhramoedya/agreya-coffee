part of 'menu_detail_bloc.dart';

@freezed
class MenuDetailState with _$MenuDetailState {
  const factory MenuDetailState({
    @Default(false) bool isLoading,
  }) = _MenuDetailState;
}
