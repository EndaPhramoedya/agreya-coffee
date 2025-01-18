import 'package:agreya_coffee/data/api/api.dart';
import 'package:agreya_coffee/features/home/home.dart';
import 'package:get_it/get_it.dart';

final GetIt injector = GetIt.instance;

Future<void> initDependencies() async {
  // Dio
  injector.registerSingleton(DioClient());

  // Service
  injector.registerSingleton(ApiService(injector<DioClient>().dio));

  // Repository
  injector.registerLazySingleton(() => HomeRepository(injector<ApiService>()));
}
