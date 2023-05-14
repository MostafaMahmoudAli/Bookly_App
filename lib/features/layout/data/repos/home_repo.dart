import 'package:dartz/dartz.dart';
import '../../../../core/errors/failure.dart';
import '../models/books_model/books_model.dart';

abstract class HomeRepo
{
 Future<Either<Failure,List<BooksModel>>> fetchNewestBooks();
 Future<Either<Failure,List<BooksModel>>>fetchFeaturedBooks();
}