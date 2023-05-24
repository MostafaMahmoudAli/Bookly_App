import 'package:bookly_app/features/layout/data/repos/home_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'api_ service.dart';

final gitIt = GetIt.instance;

void setupServiceLocator()
{
  gitIt.registerSingleton<ApiService>(
    ApiService(
      Dio(),
    ),
  );
  gitIt.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(
    gitIt.get<ApiService>(),
  ),
  );


}