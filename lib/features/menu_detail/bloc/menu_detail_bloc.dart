import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'menu_detail_bloc.freezed.dart';
part 'menu_detail_event.dart';
part 'menu_detail_state.dart';

class MenuDetailBloc extends Bloc<MenuDetailEvent, MenuDetailState> {
  MenuDetailBloc()  : super(const MenuDetailState()) {
    /// TODO: initialize Bloc events here
  }
}
