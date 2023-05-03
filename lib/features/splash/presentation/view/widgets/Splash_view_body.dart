import 'package:bookly_app/core/utils/data_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({Key? key}) : super(key: key);
  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> with SingleTickerProviderStateMixin {
  AnimationController?animationController;
  Animation<Offset>?slidingAnimation;
  @override
  void initState() {
    super.initState();
    initSlidingAnimation();

  }
  @override
  void dispose() {
    super.dispose();
    animationController!.dispose();
  }
  @override
  Widget build(BuildContext context)
  {
    return Column(
      mainAxisAlignment:MainAxisAlignment.center,
      crossAxisAlignment:CrossAxisAlignment.stretch,
      children: [
        Image.asset(DataImages.logo),
        SizedBox(height:50.0.h,),
        AnimatedBuilder(
          animation:slidingAnimation!,
          builder: (context,_) {
            return SlideTransition(
              position:slidingAnimation!,
              child: Text(
                "Read Free Books ",
                textAlign:TextAlign.center,
                style:TextStyle(
                  fontSize:25.0.sp,
                  fontWeight:FontWeight.bold,
                  color:Colors.white,
                ),
              ),
            );
          }
        ),
        // SizedBox(height:20.0.h,),
      ],
    );git
  }
  void initSlidingAnimation()
  {
    animationController = AnimationController(vsync:this,duration:const Duration(seconds: 2));
    slidingAnimation = Tween<Offset>(begin:const Offset(0,20),end:const Offset(0,1)).animate(animationController!);
    animationController!.forward();
  }
}
