import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_app/style/app_style.dart';
import 'package:new_app/ui/categoryDetails/NewsDetailsScreen.dart';
import 'package:new_app/ui/home/home_screen.dart';
import 'package:new_app/ui/splach/splash_screen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(412, 870),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: AppStyle.lightTheme,
          initialRoute: HomeScreen.routeName,
          routes: {
            HomeScreen.routeName :(context) => HomeScreen(),
            SplashScreen.routeName :(context) => SplashScreen(),
            NewsDetailsScreen.routeName :(context) => NewsDetailsScreen(),
          },
        );
      },
    );
  }
}

