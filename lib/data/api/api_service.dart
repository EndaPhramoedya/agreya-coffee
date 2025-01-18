import 'package:agreya_coffee/features/home/model/model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'api_service.g.dart';

/// [Retrofit] generated API implementation
@RestApi()
abstract class ApiService {
  factory ApiService(Dio dio) = _ApiService;

  @GET('')
  Future<MenuModel> getMenuList({
    @Path('url') required String baseUrl,
    @Query('s') String filterName,
    @Query('c') String filterCategory,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
  });

  @GET('')
  Future<MenuCategory> getCategoryList({
    @Path('url') required String baseUrl,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
  });
}
