import 'package:bookly_app/core/utils/data_images.dart';
import 'package:bookly_app/features/layout/presentation/views/widgets/home_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:AppBar(
        title:Image.asset(
            DataImages.logo,
          height:22.0.h,
        ),
        actions: [
          IconButton(
            onPressed:(){},
            icon: const Icon(
            FontAwesomeIcons.magnifyingGlass,
              size:28.0,
          ),
          ),
        ],
      ),
      body: const HomeBodyScreen(),
    );
  }
}
