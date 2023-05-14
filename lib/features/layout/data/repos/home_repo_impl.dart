import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/core/utils/api_%20service.dart';
import 'package:bookly_app/features/layout/data/models/books_model/books_model.dart';
import 'package:bookly_app/features/layout/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements HomeRepo
{
  final ApiService?apiService;
  HomeRepoImpl(this.apiService);
  @override
  Future<Either<Failure,List<BooksModel>>> fetchNewestBooks()async{
    try
    {
      var data = await apiService!.get(endPoint: "volumes?Filtering=free-ebooks&Sorting=newest &subject=&q=subject:history");
      List<BooksModel>books=[];
      for(var item in data["item"])
      {
        books.add(BooksModel.fromJson(item));
      }
      return right(books);
    }
    catch(e)
    {
      return left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<BooksModel>>> fetchFeaturedBooks() {
    throw UnimplementedError();
  }

}