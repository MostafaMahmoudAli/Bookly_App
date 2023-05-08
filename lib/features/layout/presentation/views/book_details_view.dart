import 'package:bookly_app/features/layout/presentation/views/widgets/column_book_details_view.dart';
import 'package:bookly_app/features/layout/presentation/views/widgets/custom_book_details_appbar_view.dart';
import 'package:bookly_app/features/layout/presentation/views/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:Padding(
        padding:  EdgeInsets.symmetric(horizontal:30.0.w,vertical: 30.0.h),
        child: Column(
          children: [
            const CustomBookDetailsAppBarView(),
            Padding(
              padding:  EdgeInsets.symmetric(
                  horizontal:MediaQuery.of(context).size.width*0.16,
                vertical:MediaQuery.of(context).size.height*0.015,
              ),
              child: CustomListViewItem(),
            ),
            const ColumnBookDetailsView(),
          ],
        ),
      ),
    );
  }
}
