import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../models/category.dart';
import 'category_item.dart';

class CategoriesTab extends StatelessWidget {
  final void Function(String) onTab;
  CategoriesTab({required this.onTab});
  List<CategoryModel> categories = [];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  REdgeInsets.symmetric(
          vertical: 50,
        horizontal: 37
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
              "Pick your category \nof interest",
            style: Theme.of(context).textTheme.titleMedium,
          ),
          SizedBox(height: 29.h,),
          Expanded(
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  childAspectRatio: 1/1.07,
                  mainAxisSpacing: 20.h,
                  crossAxisSpacing: 25.w
                ),
                itemBuilder: (context, index) {
                  return CategoryItem(
                    onTab: onTab,
                    category: CategoryModel.categories[index],
                    index: index,
                  );
                },
              itemCount: CategoryModel.categories.length,
            ),
          )
        ],
      ),
    );
  }
}
