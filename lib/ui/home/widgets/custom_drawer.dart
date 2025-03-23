import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

typedef selectTab = void Function(Tabs);
class CustomDrawer extends StatelessWidget {
  selectTab onPress;

  CustomDrawer({required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: REdgeInsets.symmetric(
            vertical: 40
          ),
          width: double.infinity,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
          ),
          child: Text(
            "News App!",
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
        SizedBox(
          height: 29.h,
        ),
        InkWell(
          onTap: () {
            onPress(Tabs.Categories);
          },
          child: Padding(
            padding:  REdgeInsets.only(
              left: 16
            ),
            child: Row(
              children: [
                Icon(
                  Icons.list,
                  color: Colors.black,
                  size: 30.sp,
                ),
                SizedBox(
                  width: 16.w,
                ),
                Text(
                  "Categories",
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    color: Colors.black
                  ),
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: 29.h,
        ),
        InkWell(
          onTap: () {
            onPress(Tabs.Settings);
          },
          child: Padding(
            padding:  REdgeInsets.only(
              left: 16
            ),
            child: Row(
              children: [
                Icon(
                  Icons.settings,
                  color: Colors.black,
                  size: 30.sp,
                ),
                SizedBox(
                  width: 16.w,
                ),
                Text(
                  "Settings",
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    color: Colors.black
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }

}
enum Tabs{
  Categories,
  Settings
}