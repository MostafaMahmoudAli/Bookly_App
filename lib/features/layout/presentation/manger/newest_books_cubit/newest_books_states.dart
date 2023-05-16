import 'package:equatable/equatable.dart';

import '../../../data/models/books_model/books_model.dart';

abstract class NewestBooksStates extends Equatable
{
  const NewestBooksStates();

  @override
  List<Object> get props =>[];
}

class NewestBooksInitialState extends NewestBooksStates{}

class NewestBooksLoadingState extends NewestBooksStates{}

class NewestBooksSuccessState extends NewestBooksStates
{
 final List<BooksModel>newestBooks;
 const NewestBooksSuccessState(this.newestBooks);
}

class NewestBooksErrorState extends NewestBooksStates
{
  final String error;
  const NewestBooksErrorState(this.error);
}