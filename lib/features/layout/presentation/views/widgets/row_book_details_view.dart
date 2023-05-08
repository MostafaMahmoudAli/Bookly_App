import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class RowBookDetailsView extends StatelessWidget {
  const RowBookDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
            const Icon(
              FontAwesomeIcons.solidStar,
              color:Colors.amberAccent,
            ),
            SizedBox(
              width:MediaQuery.of(context).size.height*0.018,
            ),
            Text(
                "4.8",
                style:GoogleFonts.montserrat(
                  textStyle:Theme.of(context).textTheme.titleLarge,
                )


            ),
            SizedBox(
              width:MediaQuery.of(context).size.height*0.01,
            ),
            Text(
                "(2930)",
                style:GoogleFonts.montserrat(
                  textStyle:Theme.of(context).textTheme.titleMedium,
                )
            ),
          ],
        ),
        SizedBox(
          height:MediaQuery.of(context).size.height*0.05,
        ),
        Row(
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
            Container(
              width:MediaQuery.of(context).size.width*0.35,
              height:MediaQuery.of(context).size.height*0.045,
              decoration:BoxDecoration(
                borderRadius:BorderRadius.only(
                  topLeft:Radius.circular(8.r),
                  bottomLeft:Radius.circular(8.r),
                ),
                color:Colors.white,
              ),
              child:Center(
                child: Text(
                  "19.99",
                  style:GoogleFonts.montserrat(
                    textStyle:Theme.of(context).textTheme.titleLarge!.copyWith(color:Colors.black87),
                  ),
                ),
              ),
            ),
            Container(
              width:MediaQuery.of(context).size.width*0.35,
              height:MediaQuery.of(context).size.height*0.045,
              decoration:BoxDecoration(
                borderRadius:BorderRadius.only(
                  topRight:Radius.circular(8.r),
                  bottomRight:Radius.circular(8.r),
                ),
                color:Colors.redAccent,
              ),
              child: Center(
                child: Text(
                  "free preview",
                  style:GoogleFonts.montserrat(
                    textStyle:Theme.of(context).textTheme.titleLarge!.copyWith(fontSize:14.0.sp),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
