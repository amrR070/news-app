import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../models/ArticlesResponse/Article.dart';

class ArticleItem extends StatelessWidget {
  final Article articleModel;
  const ArticleItem({super.key,required this.articleModel});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.network(
          articleModel.urlToImage??"",
          fit: BoxFit.cover,
          height: 232.h,
          width: 390.w,
        ),
        SizedBox(height: 10.h,),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                      articleModel.source?.name??"",
                      style: Theme.of(context).textTheme.headlineSmall

                  )),
              Text(
                  articleModel.title??"",
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.w500,
                  fontSize: 21.sp,
                  color: Colors.black
                )
              ),
              Align(
                alignment: Alignment.topRight,
                child: Text(
                  articleModel.publishedAt.toString(),
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              ),
            ],
          ),
        )

      ],
    );
  }
}
