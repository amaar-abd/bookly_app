import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:ssbb/core/utils/api_service.dart';
import 'package:ssbb/features/home/data/repos/home_repo_iplm.dart';

final getIt = GetIt.instance;

void setupGetIt() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<HomeRepoIplm>(HomeRepoIplm(getIt.get<ApiService>()));
}
