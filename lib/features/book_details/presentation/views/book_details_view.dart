import 'package:bookly_app/features/book_details/presentation/views/widgets/column_book_details_view.dart';
import 'package:bookly_app/features/book_details/presentation/views/widgets/custom_book_details_appbar_view.dart';
import 'package:bookly_app/features/layout/presentation/views/widgets/featured_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../layout/data/models/books_model/books_model.dart';
import '../manger/details_cubit.dart';


class BookDetailsView extends StatefulWidget {
  const BookDetailsView({Key? key, required this.detailsBooks}) : super(key: key);
  final BooksModel detailsBooks;

  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {

  @override
  void initState() {
    BlocProvider.of<DetailsBooksCubit>(context).fetchDetailsBooks(
      category: widget.detailsBooks.volumeInfo!.categories![0],
    );
    super.initState();
  }
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
              child:  FeaturedListViewItem(
                imageUrl: widget.detailsBooks.volumeInfo?.imageLinks?.thumbnail ?? "_",
              ),
            ),
             ColumnBookDetailsView(
              cDetailsBooks: widget.detailsBooks,
            ),
          ],
        ),
      ),
    );
  }
}
