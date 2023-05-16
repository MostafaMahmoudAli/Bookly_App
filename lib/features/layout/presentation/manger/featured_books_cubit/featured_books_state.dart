import 'package:equatable/equatable.dart';

import '../../../data/models/books_model/books_model.dart';

abstract class FeaturedBooksStates extends Equatable
{
  const FeaturedBooksStates();

  @override
  List<Object> get props => [];
}

class FeaturedBooksInitialState extends FeaturedBooksStates{}

class FeaturedBooksLoadingState extends FeaturedBooksStates{}

class FeaturedBooksSuccessState extends FeaturedBooksStates
{
  final List<BooksModel>featuredBooks;
   const FeaturedBooksSuccessState(this.featuredBooks);
}

class FeaturedBooksErrorState extends FeaturedBooksStates
{
  final String error;
  const FeaturedBooksErrorState(this.error);
}