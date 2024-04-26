import 'package:tarea3boredapidio/api/api_service.dart';
import 'package:get_it/get_it.dart';

abstract class DependencyInjection {
  static void initialize() {

    final ApiService boredAPI = ApiService();
    GetIt.instance.registerSingleton<ApiService>(boredAPI);
  }
}