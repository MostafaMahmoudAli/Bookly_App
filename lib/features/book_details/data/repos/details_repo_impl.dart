import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/core/utils/api_%20service.dart';
import 'package:bookly_app/core/utils/end_points.dart';
import 'package:bookly_app/features/book_details/data/repos/details_repo.dart';
import 'package:bookly_app/features/layout/data/models/books_model/books_model.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class DetailsRepoImpl extends DetailsRepo{
  DetailsRepoImpl(this.apiService);
  final ApiService?apiService;
  @override
  Future<Either<Failure, List<BooksModel>>> fetchDetailsBooks({required String category}) async
  {
    try
    {
      var data = await apiService!.get(endPoint:EndPoints.featuredBookUrl);
      List<BooksModel>detailsBooks=[];
      for(var item in data["items"])
      {
        detailsBooks.add(BooksModel.fromJson(item));
      }
      return right(detailsBooks);
    }  catch (e) {
      if(e is DioError)
      {
        return left(ServerFailure.fromDioError(e));
      }else
      {
        return left(
            ServerFailure(e.toString())
        );
      }

    }


  }
}