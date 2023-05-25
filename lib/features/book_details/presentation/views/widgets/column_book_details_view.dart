import 'package:bookly_app/features/book_details/presentation/views/widgets/row_book_details_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../layout/data/models/books_model/books_model.dart';
import 'book_details_list_view.dart';

class ColumnBookDetailsView extends StatelessWidget {
  const ColumnBookDetailsView({Key? key, required this.cDetailsBooks}) : super(key: key);
   final BooksModel?cDetailsBooks;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          cDetailsBooks!.volumeInfo!.title!,
          style: GoogleFonts.aBeeZee(
            fontSize: 20.0.sp,
          ),
          textAlign:TextAlign.center,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.01,
        ),
        Text(
          cDetailsBooks!.volumeInfo?.authors?[0] ?? "_",
          style: GoogleFonts.montserrat(
            textStyle: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.02,
        ),
         RowBookDetailsView(
         rBooksModel:cDetailsBooks! ,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.07,
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            "you can also like",
            style: GoogleFonts.montserrat(
              textStyle: Theme.of(context).textTheme.titleSmall,
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.02,
        ),
        const BookDetailsListView(),
      ],
    );
  }
}
