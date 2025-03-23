import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../models/category.dart';

class CategoryItem extends StatelessWidget {
  final CategoryModel category;
  final int index;
  void Function(String) onTab;
  CategoryItem({super.key, required this.category,required this.index,required this.onTab});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTab(category.id);
      },
      child: Container(
        decoration: BoxDecoration(
          color: category.color,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25.r),
            topRight: Radius.circular(25.r),
            bottomLeft: Radius.circular(index.isEven?25.r:0),
            bottomRight: Radius.circular(index.isOdd?25.r:0),
          ),
        ),
        child: Column(
          children: [
            Image.asset(
                category.image,
              height: 116.h,
              width: 132.w,
            ),
            SizedBox(height: 10.h,),
            Text(
                category.title,
              style: Theme.of(context).appBarTheme.titleTextStyle,
            )
          ],
        ),
      ),
    );
  }
}
