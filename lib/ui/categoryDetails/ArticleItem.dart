import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_app/ui/categoryDetails/NewsDetailsScreen.dart';
import '../../models/ArticlesResponse/Article.dart';

class ArticleItem extends StatelessWidget {
  final Article articleModel;
  const ArticleItem({super.key,required this.articleModel});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(NewsDetailsScreen.routeName, arguments: articleModel);
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CachedNetworkImage(
              imageUrl: articleModel.urlToImage??"",
            fit: BoxFit.cover,
            height: 232.h,
            width: 390.w,
            placeholder: (context, url) => Center(child: CircularProgressIndicator(),),
            errorWidget: (context, url, error) => Icon(
                Icons.error,
              color: Theme.of(context).colorScheme.primary,
            ),
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
      ),
    );
  }
}
//articleModel.urlToImage??"",
//           fit: BoxFit.cover,
//           height: 232.h,
//           width: 390.w,