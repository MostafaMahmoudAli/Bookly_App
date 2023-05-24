import 'package:bookly_app/features/book_details/presentation/views/widgets/column_book_details_view.dart';
import 'package:bookly_app/features/book_details/presentation/views/widgets/custom_book_details_appbar_view.dart';
import 'package:bookly_app/features/layout/presentation/views/widgets/featured_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.0.w, vertical: 30.0.h),
        child: Column(
          children: [
            const CustomBookDetailsAppBarView(),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.16,
                vertical: MediaQuery.of(context).size.height * 0.015,
              ),
              child: const FeaturedListViewItem(
                imageUrl: "https://images.unsplash.com/photo-1575936123452-b67c3203c357?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80",
              ),
            ),
            const ColumnBookDetailsView(),
          ],
        ),
      ),
    );
  }
}
