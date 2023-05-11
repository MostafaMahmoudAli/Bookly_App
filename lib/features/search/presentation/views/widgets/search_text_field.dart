import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration:InputDecoration(
        hintText:"Search",
        hintStyle:GoogleFonts.montserrat(
          textStyle:Theme.of(context).textTheme.titleLarge,
        ),
        suffixIcon: Icon(
          FontAwesomeIcons.magnifyingGlass,
          color:Colors.white,
          size:18.0.sp,
        ),
        enabledBorder:OutlineInputBorder(
          borderRadius:BorderRadius.circular(12.r),
          borderSide:BorderSide(
            color:Colors.white.withOpacity(0.3),
          ),
        ),
        focusedBorder:OutlineInputBorder(
          borderRadius:BorderRadius.circular(12.r),
          borderSide:BorderSide(
              color:Colors.white
          ),
        ),
      ),
    );
  }
}
