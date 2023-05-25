import 'package:bookly_app/features/layout/data/models/books_model/books_model.dart';
import 'package:bookly_app/features/layout/presentation/views/widgets/row_body_of_best_seller.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class NewestBooksItem extends StatelessWidget {
   const NewestBooksItem({Key? key,required this.booksModel,}) : super(key: key);
  final BooksModel?booksModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        GoRouter.of(context).push("/BookDetailsView", extra:booksModel );
      },
      child: Row(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.15,
            height: MediaQuery.of(context).size.height * 0.12,
            child: ClipRRect(
              borderRadius:BorderRadius.circular(14.r),
              child: AspectRatio(
                aspectRatio: 1 / 2,
                child: CachedNetworkImage(
                  imageUrl:booksModel!.volumeInfo!.imageLinks!.thumbnail!,
                  fit:BoxFit.fill,
                  errorWidget: (context, url, error) => const Icon(
                    Icons.error_outline_rounded,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.06,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                booksModel!.volumeInfo!.title!,
                style: GoogleFonts.aBeeZee(
                  fontSize: 20.0.sp,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.004,
              ),
              Text(
                booksModel!.volumeInfo!.authors![0],
                style: GoogleFonts.montserrat(
                  textStyle: Theme.of(context).textTheme.titleMedium,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.004,
              ),
               RowBodyOfBestSellerItem(
                rating:booksModel!.volumeInfo!.averageRating ?? 0,
                 count:booksModel!.volumeInfo!.ratingsCount ?? 0,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
