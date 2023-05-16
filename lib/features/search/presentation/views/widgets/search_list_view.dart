import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../layout/presentation/views/widgets/newest_books_item.dart';

class SearchListView extends StatelessWidget {
  const SearchListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => const NewestBooksItem(),
      separatorBuilder: (context, index) => SizedBox(
        height: 15.0.h,
      ),
      itemCount: 15,
    );
  }
}
