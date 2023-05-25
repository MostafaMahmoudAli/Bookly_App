import 'package:bookly_app/features/layout/data/models/books_model/books_model.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';

abstract class DetailsRepo{
  Future<Either<Failure,List<BooksModel>>>fetchDetailsBooks({required String category});
}