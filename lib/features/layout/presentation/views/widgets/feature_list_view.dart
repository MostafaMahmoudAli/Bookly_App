import 'package:bookly_app/features/layout/presentation/manger/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/features/layout/presentation/manger/featured_books_cubit/featured_books_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/componants.dart';
import 'featured_list_view_item.dart';

class FeaturedListView extends StatelessWidget {
  const FeaturedListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit,FeaturedBooksStates>(

      builder:(context,state)
      {
        // BlocProvider.of<FeaturedBooksCubit>(context).fetchFeaturedBooks();
        if(state is FeaturedBooksSuccessState)
        {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .28,
            child: ListView.separated(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) =>  FeaturedListViewItem(
                imageUrl: state.featuredBooks[index].volumeInfo!.imageLinks?.thumbnail ?? '-'
                    ,
              ),
              separatorBuilder: (BuildContext context, int index) => SizedBox(
                width: 10.0.w,
              ),
              itemCount: state.featuredBooks.length,
            ),
          );
        }else if(state is FeaturedBooksErrorState)
        {
          return CustomErrorMessage(errMessage: state.error);
        }else
        {
          return const Center(child:CircularProgressIndicator());
        }
      },
    );
  }
}
