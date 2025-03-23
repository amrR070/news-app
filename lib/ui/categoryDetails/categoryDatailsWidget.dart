import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'NewsListWidget.dart';

class CategoryDatailsWidget extends StatelessWidget {
  final String categoryId;
  CategoryDatailsWidget({ super.key,required this.categoryId});
  List<String> sources =[
    "BBC","CBC","sports","BBC","CBC","sports","BBC","CBC","sports",
    "BBC","CBC","sports","BBC","CBC","sports","BBC","CBC","sports",
    "BBC","CBC","sports","BBC","CBC","sports","BBC","CBC","sports",
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length : sources.length,
      child: Column(
        children: [
          Padding(
            padding: REdgeInsets.all(12),
            child: TabBar(
                isScrollable: true,
                indicator: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                  borderRadius: BorderRadius.circular(25.r)
                ),
                tabs: sources.map((e) => Tab(
                  child: Container(
                    padding: REdgeInsets.all(12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.r),
                      border: Border.all(
                        color: Theme.of(context).colorScheme.primary,
                      )
                    ),
                    child: Text(
                        e,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.5,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                  ),
                )).toList()
            ),
          ),
          SizedBox(height: 10.h,),
          Expanded(
            child: TabBarView(
                children: sources.map((e) => NewsListWidget()).toList()
            ),
          )
        ],
      ),
    );
  }
}
