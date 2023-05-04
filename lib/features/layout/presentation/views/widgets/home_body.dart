import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'feature_list_view.dart';

class HomeBodyScreen extends StatelessWidget {
  const HomeBodyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical:20.0.h,
        horizontal: 20.0.w,
      ),
      child: Column(
        crossAxisAlignment:CrossAxisAlignment.start,
        children:  [
          const FeaturedListView(),
          SizedBox(
            height: MediaQuery.of(context).size.height * .06,
          ),
          Text(
            "Best Seller",
            style:Theme.of(context).textTheme.titleLarge,
          ),
        ],
      ),
    );
  }
}
