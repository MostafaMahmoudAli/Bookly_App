import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/core/utils/api_%20service.dart';
import 'package:bookly_app/features/layout/data/models/books_model/books_model.dart';
import 'package:bookly_app/features/layout/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../core/utils/end_points.dart';

class HomeRepoImpl implements HomeRepo
{
  final ApiService?apiService;
  HomeRepoImpl(this.apiService);
  @override
  Future<Either<Failure,List<BooksModel>>> fetchNewestBooks()async{
    try
    {
      var data = await apiService!.get(
        endPoint:EndPoints.newestBookUrl,
      );
      List<BooksModel>newestBooks=[];
      for(var item in data["item"])
      {
        newestBooks.add(BooksModel.fromJson(item));
      }
      return right(newestBooks);
    }
    catch(e)
    {
     if(e is DioError)
     {
       return left(
           ServerFailure.fromDioError(e),
       );
     }
     return left(
       ServerFailure(e.toString()),
       );
    }
  }

  @override
  Future<Either<Failure, List<BooksModel>>> fetchFeaturedBooks()async {
    try
    {
      var data = await apiService!.get(endPoint: EndPoints.featuredBookUrl);
      List<BooksModel>featuredBooks =[];
      for(var item in data["item"])
      {
        featuredBooks.add(BooksModel.fromJson(item));
      }
      return right(featuredBooks);
    }
    catch(e)
    {
      // if(e is DioError)
      // {
      //   return left(ServerFailure.fromDioError(e));
      // }
      return left(ServerFailure(e.toString()));
    }
  }
}