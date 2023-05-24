import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FeaturedListViewItem extends StatelessWidget {
  const FeaturedListViewItem({Key? key, required this.imageUrl}) : super(key: key);
  final String?imageUrl;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius:BorderRadius.circular(14.r),
      child: AspectRatio(
        aspectRatio: 2.5 / 3.8,
        child:CachedNetworkImage(
          imageUrl: imageUrl!,
          fit:BoxFit.fill,
          errorWidget:(context, url, error) => const Center(
            child: Icon(
              Icons.error_outline_outlined,
            ),
          ),
        ),
      ),
    );
  }
}
