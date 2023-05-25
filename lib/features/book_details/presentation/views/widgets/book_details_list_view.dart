import 'package:bookly_app/core/utils/componants.dart';
import 'package:bookly_app/features/book_details/presentation/manger/details_cubit.dart';
import 'package:bookly_app/features/book_details/presentation/manger/details_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../layout/presentation/views/widgets/featured_list_view_item.dart';

class BookDetailsListView extends StatelessWidget {
  const BookDetailsListView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DetailsBooksCubit,DetailsBooksStates>(
      builder:(context,state)
      {
       if(state is DetailsBooksSuccessState)
       {
         return SizedBox(
           height: MediaQuery.of(context).size.height * .15,
           child: ListView.separated(
             physics: const BouncingScrollPhysics(),
             scrollDirection: Axis.horizontal,
             itemBuilder: (context, index) =>  FeaturedListViewItem(
              imageUrl: state.detailsBooks[index].volumeInfo?.imageLinks?.thumbnail ?? "_",
             ),
             separatorBuilder: (BuildContext context, int index) => SizedBox(
               width: 10.0.w,
             ),
             itemCount: state.detailsBooks.length,
           ),
         );
       }else if(state is DetailsBooksErrorState)
       {
         return CustomErrorMessage(errMessage:state.error);
       }else
       {
         return const CircularProgressIndicator();
       }
      }
    );
  }
}
