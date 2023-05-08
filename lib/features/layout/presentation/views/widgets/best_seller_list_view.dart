import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'best_seller_item.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        padding:EdgeInsets.zero,
        shrinkWrap: true,
        physics:const NeverScrollableScrollPhysics(),
        itemBuilder: (context,index)=>const BestSellerItem(),
        separatorBuilder: (context,index)=>SizedBox(
          height:15.0.h,
        ),
        itemCount: 15,
    );
  }
}
