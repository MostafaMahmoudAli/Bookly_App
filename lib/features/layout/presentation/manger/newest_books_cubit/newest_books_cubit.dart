import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/layout/data/repos/home_repo.dart';

import 'newest_books_states.dart';

class NewestBooksCubit extends Cubit<NewestBooksStates>
{
  NewestBooksCubit(this.homeRepo):super(NewestBooksInitialState());

final HomeRepo homeRepo;

Future<void>fetchNewestBooks()async
{
  var results = await homeRepo.fetchNewestBooks();

  results.fold(
          (failure)
      {
        emit(NewestBooksErrorState(failure.errMessage));
      },
          (newestBooks)
      {
        emit(NewestBooksSuccessState(newestBooks));
      });
}








}