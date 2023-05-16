import 'package:equatable/equatable.dart';

import '../../../data/models/books_model/books_model.dart';

abstract class FeaturedBooksState extends Equatable
{
  const FeaturedBooksState();

  @override
  List<Object> get props => [];
}

class FeaturedBooksLoadingState extends FeaturedBooksState{}

class FeaturedBooksSuccessState extends FeaturedBooksState
{
  final List<BooksModel>featuredBooks;
  const FeaturedBooksSuccessState(this.featuredBooks);
}

class FeaturedBooksErrorState extends FeaturedBooksState
{
  final String error;
  const FeaturedBooksErrorState(this.error);
}