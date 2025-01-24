part of 'menu_detail_bloc.dart';

@freezed
class MenuDetailEvent with _$MenuDetailEvent {
  const factory MenuDetailEvent.onIncreaseQuantity() = _IncreaseQuantity;
  const factory MenuDetailEvent.onDecreaseQuantity() = _DecreaseQuantity;
}
