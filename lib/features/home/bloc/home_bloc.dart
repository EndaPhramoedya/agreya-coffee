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
    on<_GetCategoryList>(_onGetCategoryList);
    on<_OnSelectCategory>(_onSelectCategory);
  }

  Future<void> _onGetMenuList(_GetMenuList event, Emitter<HomeState> emit) async {
    try {
      final MenuModel? menuModel = await _homeRepository.getMenuList(
        filterName: event.filterName,
        filterCategory: state.category,
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

  Future<void> _onGetCategoryList(_GetCategoryList event, Emitter<HomeState> emit) async {
    try {
      final MenuCategory? menuCategory = await _homeRepository.getCategoryList();

      emit(
        state.copyWith(
          menuCategory: menuCategory,
          category: menuCategory?.categoryList.first.name ?? '',
        ),
      );
    } catch (e) {
      log(e.toString());
    }
  }

  Future<void> _onSelectCategory(_OnSelectCategory event, Emitter<HomeState> emit) async {
    emit(state.copyWith(category: event.category));
  }
}
