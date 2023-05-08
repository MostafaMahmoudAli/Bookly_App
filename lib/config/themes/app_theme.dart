import 'package:bookly_app/core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData themeData()=> ThemeData(
  scaffoldBackgroundColor:kPrimaryColor,
  appBarTheme:const AppBarTheme(
    backgroundColor:Colors.transparent,
    elevation:0.0,
    iconTheme:IconThemeData(
      color:Colors.white,
    ),
  ),

  textTheme:GoogleFonts.montserratTextTheme(
    ThemeData.dark().textTheme.copyWith(
       titleLarge:TextStyle(
        fontSize:18.0.sp,
        fontWeight:FontWeight.w600,
        color:Colors.white,
      ),
       titleMedium:TextStyle(
        fontSize:14.0.sp,
        fontWeight:FontWeight.bold,
        color:Colors.grey,
      ),
      titleSmall:TextStyle(
        fontSize:14.0.sp,
        fontWeight:FontWeight.bold,
        color:Colors.white,
      ),
    ),
  ),
);
