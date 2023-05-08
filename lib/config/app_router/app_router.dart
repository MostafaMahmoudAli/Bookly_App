import 'package:bookly_app/features/layout/presentation/views/home_view.dart';
import 'package:go_router/go_router.dart';

import '../../features/layout/presentation/views/book_details_view.dart';
import '../../features/splash/presentation/view/splash_view.dart';

abstract class AppRouter{
 static final router = GoRouter(
      routes: [
        GoRoute(
            path:"/",
          builder: (context,state)=>const SplashView(),
        ),
        GoRoute(
          path:"/HomeView",
          builder:(context,state)=>const HomeScreen(),
        ),
        GoRoute(
          path:"/BookDetailsView",
          builder:(context,state)=>const BookDetailsView(),
        ),
      ]);
}