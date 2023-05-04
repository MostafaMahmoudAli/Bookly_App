import 'package:bookly_app/core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

ThemeData themeData = ThemeData(
  scaffoldBackgroundColor:kPrimaryColor,
  appBarTheme:const AppBarTheme(
    backgroundColor:Colors.transparent,
    elevation:0.0,
  ),
  textTheme:TextTheme(
    titleLarge:TextStyle(
      fontWeight:FontWeight.w700,
      fontSize:20.0.sp,
      color:Colors.white,
    ),
  ),
);
ThemeData darkData = ThemeData(
  scaffoldBackgroundColor:kPrimaryColor,
  appBarTheme:const AppBarTheme(
    backgroundColor:Colors.transparent,
    elevation:0.0,
  ),
  textTheme:TextTheme(
    titleLarge:TextStyle(
      fontWeight:FontWeight.w700,
      fontSize:20.0.sp,
      color:Colors.white,
    ),
  ),
);