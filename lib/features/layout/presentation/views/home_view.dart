import 'package:bookly_app/core/utils/data_images.dart';
import 'package:bookly_app/features/layout/data/repos/home_repo_impl.dart';
import 'package:bookly_app/features/layout/presentation/manger/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/features/layout/presentation/views/widgets/home_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/utils/service_locator.dart';
import '../manger/newest_books_cubit/newest_books_cubit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers:[
           BlocProvider(
             create:(context)=>FeaturedBooksCubit(
            gitIt.get<HomeRepoImpl>(),
          )..fetchFeaturedBooks(),
          ),
          BlocProvider(
            create:(context)=>NewestBooksCubit(
          gitIt.get<HomeRepoImpl>(),
          )..fetchNewestBooks(),
          ),
        ],
        child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Image.asset(
            DataImages.logo,
            height: 22.0.h,
          ),
          actions: [
            IconButton(
              onPressed:(){
                GoRouter.of(context).push("/SearchView");
              },
              icon: const Icon(
                FontAwesomeIcons.magnifyingGlass,
                size: 28.0,
              ),
            ),
          ],
        ),
        body: const HomeBodyScreen(),
      ),
    );
  }
}
