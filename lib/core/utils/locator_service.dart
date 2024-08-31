import 'package:booklyapp/Features/home/data/repos/home_repo_impl.dart';
import 'package:booklyapp/core/utils/api_service.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupLocatorService() {
  getIt.registerSingleton<ApiService>(
    ApiService(Dio()),
  );
  getIt.registerSingleton<HomeRapoImpl>(HomeRapoImpl(
    getIt.get<ApiService>(),
  ));
}
