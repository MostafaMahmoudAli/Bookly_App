import 'package:bloc/bloc.dart';

import '../../data/repos/details_repo.dart';
import 'details_states.dart';

class DetailsBooksCubit extends Cubit<DetailsBooksStates>{
  DetailsBooksCubit(this.detailsRepo):super(DetailsBooksInitialState());

  final DetailsRepo detailsRepo;

  Future<void>fetchDetailsBooks({required String category})async
  {
    emit(DetailsBooksLoadingState());

    var results = await detailsRepo.fetchDetailsBooks(category: category);
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