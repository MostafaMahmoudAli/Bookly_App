import 'package:bookly_app/core/utils/componants.dart';
import 'package:bookly_app/features/layout/presentation/manger/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly_app/features/layout/presentation/manger/newest_books_cubit/newest_books_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'newest_books_item.dart';

class NewestBooksListView extends StatelessWidget {
  const NewestBooksListView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit,NewestBooksStates>(
      builder: (context ,state)
      {
        // BlocProvider.of<NewestBooksCubit>(context).fetchNewestBooks();
        if(state is NewestBooksSuccessState)
        {
          return ListView.separated(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) =>  NewestBooksItem(
              booksModel:state.newestBooks[index],
            ),
            separatorBuilder: (context, index) => SizedBox(
              height: 15.0.h,
            ),
            itemCount: state.newestBooks.length,
          );
        }else if (state is NewestBooksErrorState)
        {
          return CustomErrorMessage(errMessage: state.error);
        }else
        {
          return const Center(
            child:CircularProgressIndicator(),
          );
        }

      },

    );
  }
}
