import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'best_seller_list_view.dart';
import 'feature_list_view.dart';

class HomeBodyScreen extends StatelessWidget {
  const HomeBodyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics:const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child:Padding(
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
                    // style:Theme.of(context).textTheme.titleLarge,
                    style:GoogleFonts.montserrat(
                      textStyle:Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .01,
                  ),
                ],
              ),
            ),
        ),
         SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal:20.0.w,
            ),
            child: const BestSellerListViewItem(),
          ),
        ),
      ],
    );
  }
}
