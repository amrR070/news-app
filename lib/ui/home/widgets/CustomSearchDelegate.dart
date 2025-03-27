import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_app/style/app_colors.dart';
import 'package:new_app/style/app_style.dart';

class CustomSearchDelegate extends SearchDelegate{
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          icon: Icon(Icons.search),
          onPressed: () {

          },
      )
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.close),
      onPressed: () => Navigator.pop(context,)
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Container();

  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Container();
  }
  @override
  ThemeData appBarTheme(BuildContext context) {
    return ThemeData(
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
        titleLarge: TextStyle(
          color: Colors.white,
          fontSize: 21.sp
        )
      ),
      inputDecorationTheme: InputDecorationTheme(
        border: UnderlineInputBorder(
          borderSide: BorderSide.none
        )
      )
    );
  }
  
}