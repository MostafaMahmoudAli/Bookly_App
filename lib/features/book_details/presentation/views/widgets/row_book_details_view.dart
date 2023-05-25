import 'package:bookly_app/features/layout/data/models/books_model/books_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../core/utils/componants.dart';
import '../../../../../core/utils/helper_functions.dart';

class RowBookDetailsView extends StatelessWidget {
  const RowBookDetailsView({Key? key, required this.rBooksModel}) : super(key: key);
  final BooksModel rBooksModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              FontAwesomeIcons.solidStar,
              color: Colors.amberAccent,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.height * 0.018,
            ),
            Text(
                rBooksModel.volumeInfo?.averageRating.toString() ?? "0",
                style: GoogleFonts.montserrat(
                  textStyle: Theme.of(context).textTheme.titleLarge,
                )),
            SizedBox(
              width: MediaQuery.of(context).size.height * 0.01,
            ),
            Text(
                rBooksModel.volumeInfo?.ratingsCount.toString() ?? "0",
                style: GoogleFonts.montserrat(
                  textStyle: Theme.of(context).textTheme.titleMedium,
                )),
          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.05,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: CustomActionButton(
                text: "Free",
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8.r),
                  bottomLeft: Radius.circular(8.r),
                ),
                backGroundColor: Colors.white,
                textColor: Colors.black87,
                onTap: (){},
              ),
            ),
            Expanded(
              child: CustomActionButton(
                text: "free preview",
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(8.r),
                  bottomRight: Radius.circular(8.r),
                ),
                backGroundColor: Colors.redAccent,
                textColor: Colors.black87,
                onTap: ()async
                {
                  customUrlLauncher(
                      context: context,
                    url:  rBooksModel.volumeInfo!.previewLink!
                  );
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
