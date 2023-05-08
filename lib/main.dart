import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'config/app_router/app_router.dart';
import 'config/themes/app_theme.dart';
import 'features/layout/presentation/views/home_view.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return  ScreenUtilInit(
        designSize: const Size(360, 690),
    minTextAdapt: true,
    splitScreenMode: true,
    builder: (context , child)
    {
     return  MaterialApp.router(
       routerConfig:AppRouter.router,
       debugShowCheckedModeBanner:false,
       theme:themeData(),
     );
    });

  }
}

