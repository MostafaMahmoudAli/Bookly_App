import 'package:bookly_app/features/layout/presentation/views/widgets/custom_book_details_appbar_view.dart';
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
            CustomBookDetailsAppBarView(),
          ],
        ),
      ),
    );
  }
}
