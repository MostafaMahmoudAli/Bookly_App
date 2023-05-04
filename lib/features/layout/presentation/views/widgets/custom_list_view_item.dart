
import 'package:bookly_app/core/utils/data_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.5/3.8,
      child: Container(
        decoration: BoxDecoration(
          color:Colors.white,
          borderRadius:BorderRadius.circular(16.0.r),
          image:const DecorationImage(
              image: AssetImage(
                  DataImages.testImage,
              ),
            fit:BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
