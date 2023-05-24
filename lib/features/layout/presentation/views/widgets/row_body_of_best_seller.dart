import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class RowBodyOfBestSellerItem extends StatelessWidget {
  const RowBodyOfBestSellerItem({Key? key,required this.rating,required this.count}) : super(key: key);
  final int?rating;
  final int?count;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Free",
          style: GoogleFonts.montserrat(
            textStyle: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.height * 0.06,
        ),
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Colors.amberAccent,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.height * 0.01,
        ),
        Text(
            "4.8",
            style: GoogleFonts.montserrat(
              textStyle: Theme.of(context).textTheme.titleLarge,
            ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.height * 0.01,
        ),
        Text(
            "(2930)",
            style: GoogleFonts.montserrat(
              textStyle: Theme.of(context).textTheme.titleMedium,
            ),
        ),
      ],
    );
  }
}
