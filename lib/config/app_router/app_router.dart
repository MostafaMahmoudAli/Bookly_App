import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:bookly_app/features/book_details/data/repos/details_repo_impl.dart';
import 'package:bookly_app/features/layout/presentation/views/home_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../features/book_details/presentation/manger/details_cubit.dart';
import '../../features/book_details/presentation/views/book_details_view.dart';
import '../../features/layout/data/models/books_model/books_model.dart';
import '../../features/search/presentation/views/search_view.dart';
import '../../features/splash/presentation/view/splash_view.dart';

abstract class AppRouter {
  static final router = GoRouter(routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: "/HomeView",
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: "/BookDetailsView",
      builder: (context, state) => BlocProvider(
        create:(context)=>DetailsBooksCubit(
          gitIt.get<DetailsRepoImpl>(),
        ),
          child:  BookDetailsView(
            detailsBooks: state.extra as BooksModel,
          ),
      ),
    ),
    GoRoute(
      path: "/SearchView",
      builder: (context, state) => const SearchView(),
    ),
  ]);
}
