import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'app_colors.dart';

class AppStyle{
  static ThemeData lightTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.lightPrimaryColor,
      primary: AppColors.lightPrimaryColor
    ),
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.lightPrimaryColor,
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 22.sp,
        fontWeight: FontWeight.w400,
      ),
      centerTitle: true,
      iconTheme: IconThemeData(
        color: Colors.white,
        size: 27.sp
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(50.r),
            bottomRight: Radius.circular(50.r),
        )
      )
    ),
    textTheme: TextTheme(
      headlineMedium: TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 24.sp,
        color: Colors.white
      ),
      headlineSmall: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 15.sp,
        color: Colors.black
      ),
      titleMedium: TextStyle(
        fontSize: 24.sp,
        fontWeight: FontWeight.bold,
        color: AppColors.greyColor
      )
    )
  );

}