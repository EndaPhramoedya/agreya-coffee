import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'menu_detail_bloc.freezed.dart';
part 'menu_detail_event.dart';
part 'menu_detail_state.dart';

class MenuDetailBloc extends Bloc<MenuDetailEvent, MenuDetailState> {
  MenuDetailBloc() : super(const MenuDetailState()) {
    on<_IncreaseQuantity>(_onIncreaseQuantity);
    on<_DecreaseQuantity>(_onDecreaseQuantity);
  }

  void _onIncreaseQuantity(_IncreaseQuantity event, Emitter<MenuDetailState> emit) {
    final int currentQuantity = state.quantity;
    emit(state.copyWith(quantity: currentQuantity + 1));
  }

  void _onDecreaseQuantity(_DecreaseQuantity event, Emitter<MenuDetailState> emit) {
    final int currentQuantity = state.quantity;
    emit(state.copyWith(quantity: currentQuantity - 1));
  }
}
