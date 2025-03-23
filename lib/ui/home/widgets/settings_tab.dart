import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingsTab extends StatelessWidget {
  const SettingsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  REdgeInsets.all(40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Language",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.sp,
              color: Colors.black
            ),
          ),
          SizedBox(height: 10.h,),
          Padding(
            padding:  REdgeInsets.all(10),
            child: Container(
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                        "English",
                      style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w400,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                  ),
                  Icon(
                      Icons.arrow_drop_down,
                    color: Theme.of(context).colorScheme.primary,
                  )
                ],
              ),

              alignment: Alignment.topLeft,
              padding: EdgeInsets.symmetric(
                    vertical: 12,
                    horizontal: 20
                  ),
              decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(3),
                 border: Border.all(
                 color: Theme.of(context).colorScheme.primary,
                 width: 2.w,
                  )
               ),
            ),
          )
        ],
      ),
    );
  }
}
