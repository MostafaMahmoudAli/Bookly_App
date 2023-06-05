import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomActionButton extends StatelessWidget {
  const CustomActionButton({
    Key? key,
    required this.text,
    required this.borderRadius,
    required this.textColor,
    required this.backGroundColor,
    required this.onTap,
  }) : super(key: key);
  final String text;
  final BorderRadius borderRadius;
  final Color textColor;
  final Color backGroundColor;
  final GestureTapCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.35,
        height: MediaQuery.of(context).size.height * 0.045,
        decoration: BoxDecoration(
          borderRadius: borderRadius,
          color: backGroundColor,
        ),
        child: Center(
          child: Text(
            text,
            style: GoogleFonts.montserrat(
              textStyle: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: textColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}


class CustomErrorMessage extends StatelessWidget {
   const CustomErrorMessage({Key? key,required this.errMessage}) : super(key: key);
   final String errMessage;
  @override
  Widget build(BuildContext context) {
    return Text(
      errMessage,
      style:Theme.of(context).textTheme.titleMedium,
    );
  }
}

