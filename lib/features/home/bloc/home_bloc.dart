import 'dart:developer';

import 'package:agreya_coffee/features/home/model/model.dart';
import 'package:agreya_coffee/features/home/repository/repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeRepository _homeRepository;

  HomeBloc({
    required HomeRepository homeRepository,
  })  : _homeRepository = homeRepository,
        super(const HomeState()) {
    on<_GetMenuList>(_onGetMenuList);
  }

  Future<void> _onGetMenuList(_GetMenuList event, Emitter<HomeState> emit) async {
    try {
      // get country
      final MenuModel? menuModel = await _homeRepository.getMenuList(
        filterName: event.filterName,
        filterCategory: event.filterCategory,
      );

      emit(
        state.copyWith(
          menuModel: menuModel,
        ),
      );
    } catch (e) {
      log(e.toString());
    }
  }
}
