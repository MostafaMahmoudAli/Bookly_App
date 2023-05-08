import 'package:flutter/material.dart';

class CustomBookDetailsAppBarView extends StatelessWidget {
  const CustomBookDetailsAppBarView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
            onPressed: (){},
            icon:const Icon(
              Icons.close_outlined,
              color:Colors.white,
            ),
        ),
        IconButton(
          onPressed: (){},
          icon:const Icon(
            Icons.shopping_cart_outlined,
            color:Colors.white,
          ),
        ),
      ],
    );
  }
}
