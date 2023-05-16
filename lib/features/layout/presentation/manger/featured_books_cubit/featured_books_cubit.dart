
import 'package:bloc/bloc.dart';

import 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksStates>
{
  FeaturedBooksCubit():super(FeaturedBooksInitialState());
}