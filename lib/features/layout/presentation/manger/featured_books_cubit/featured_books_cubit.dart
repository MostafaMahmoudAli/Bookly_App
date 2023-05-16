
import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/layout/data/repos/home_repo.dart';

import 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksStates>
{
  FeaturedBooksCubit(this.homeRepo):super(FeaturedBooksInitialState());

  final HomeRepo homeRepo;

  Future<void>fetchFeaturedBooks() async
  {
    var results = await homeRepo.fetchFeaturedBooks();

    results.fold(
            (failure)
        {
          emit(FeaturedBooksErrorState(failure.errMessage));
        },
            (featuredBooks)
        {
          emit(FeaturedBooksSuccessState(featuredBooks));
        }
    );
  }
}