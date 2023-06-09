import 'package:bookly_app/features/book_details/data/repos/details_repo_impl.dart';
import 'package:bookly_app/features/layout/data/repos/home_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'api_ service.dart';

final gitIt = GetIt.instance;

void setupServiceLocator()
{
  gitIt.registerLazySingleton<ApiService>(
      ()=> ApiService(
      Dio(),
    ),
  );
  gitIt.registerLazySingleton<HomeRepoImpl>(
      ()=> HomeRepoImpl(
    gitIt.get<ApiService>(),
  ),
  );

  gitIt.registerLazySingleton<DetailsRepoImpl>(
      ()=> DetailsRepoImpl(
      gitIt.get<ApiService>(),
    ),
  );
}