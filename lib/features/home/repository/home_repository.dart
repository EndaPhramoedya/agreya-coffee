import 'dart:developer';

import 'package:agreya_coffee/constants/constants.dart';
import 'package:agreya_coffee/data/data.dart';
import 'package:agreya_coffee/features/home/model/model.dart';
import 'package:dio/dio.dart';

class HomeRepository {
  final ApiService _apiService;

  HomeRepository(this._apiService);

  Future<MenuModel>? getMenuList({
    String filterName = '',
    String filterCategory = '',
  }) async {
    try {
      final MenuModel response = await _apiService.getMenuList(
        baseUrl: ApiPaths.menuList,
        filterName: filterName,
        filterCategory: filterCategory,
      );

      return response;
    } on DioException catch (e) {
      log(e.toString(), name: 'getMenuList');
      rethrow;
    }
  }
}
