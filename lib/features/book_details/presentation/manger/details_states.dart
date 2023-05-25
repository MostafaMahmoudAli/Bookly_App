import '../../../layout/data/models/books_model/books_model.dart';

abstract class DetailsBooksStates{}

class DetailsBooksInitialState extends DetailsBooksStates{}

class DetailsBooksLoadingState extends DetailsBooksStates{}

class DetailsBooksSuccessState extends DetailsBooksStates{
  final List<BooksModel>detailsBooks;
  DetailsBooksSuccessState(this.detailsBooks);
}

class DetailsBooksErrorState extends DetailsBooksStates{
  final String error;
  DetailsBooksErrorState(this.error);
}