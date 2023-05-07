import 'package:bookly_app/core/utils/data_images.dart';
import 'package:bookly_app/features/layout/presentation/views/widgets/row_body_of_best_seller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children:[
        SizedBox(
          width:MediaQuery.of(context).size.width * 0.15,
          height:MediaQuery.of(context).size.height * 0.12,
          child: AspectRatio(
            aspectRatio:1/2,
            child: Container(
              decoration:BoxDecoration(
                color:Colors.white,
                borderRadius:BorderRadius.circular(10.0.r),
                image:const DecorationImage(
                  image: AssetImage(
                    DataImages.testImage,
                  ),
                  fit:BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
        SizedBox(width:MediaQuery.of(context).size.width * 0.06,),
        Column(
          crossAxisAlignment:CrossAxisAlignment.start,
          children:[
            Text(
              "dnvksdbvkndfn",
              style:GoogleFonts.aBeeZee(
                fontSize:20.0.sp,
              ),

            ),
            SizedBox(
              height:MediaQuery.of(context).size.height*0.004,
            ),
            Text(
              "j.ksmv",
             style:GoogleFonts.montserrat(
               textStyle:Theme.of(context).textTheme.titleMedium,
             ),
            ),
            SizedBox(
              height:MediaQuery.of(context).size.height*0.004,
            ),
           const RowBodyOfBestSellerItem(),
          ],
        ),
      ],
    );
  }
}



