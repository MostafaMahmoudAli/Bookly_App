import 'package:bloc/bloc.dart';

import '../../data/repos/details_repo.dart';
import 'details_states.dart';

class DetailsCubit extends Cubit<DetailsBooksStates>{
  DetailsCubit(this.detailsRepo):super(DetailsBooksInitialState());

  final DetailsRepo?detailsRepo;

  Future<void>fetchDetailsBooks()async
  {
    var results = await detailsRepo!.fetchDetailsBooks();
    results.fold(
            (failure)
        {
          emit(DetailsBooksErrorState(failure.errMessage));
        },
    (booksModel)
    {
      emit(DetailsBooksSuccessState(booksModel));
    }
    );
  }
}