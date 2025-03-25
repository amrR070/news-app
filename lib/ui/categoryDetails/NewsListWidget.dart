import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_app/remot/Api_manager.dart';
import '../../models/ArticleModel.dart';
import 'ArticleItem.dart';

class NewsListWidget extends StatefulWidget {
  final String sourceId;
  const NewsListWidget({super.key,required this.sourceId});

  @override
  State<NewsListWidget> createState() => _NewsListWidgetState();
}

class _NewsListWidgetState extends State<NewsListWidget> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: ApiManager.getArticles(widget.sourceId),
        builder: (context, snapshot) {
          if(snapshot.connectionState == ConnectionState.waiting){
            return Center(child: CircularProgressIndicator(),);
          }
          if(snapshot.hasError){
            return Column(
              children: [
                Text(snapshot.hasError.toString()),
                ElevatedButton(onPressed: () {
                  setState(() {

                  });
                }, child: Text("try again"))
              ],
            );
          }
          var response = snapshot.data;
          if(response?.status == "error"){
            return Column(
              children: [
                Text(response?.message??" "),
                ElevatedButton(onPressed: () {
                  setState(() {

                  });
                }, child: Text("try again"))
              ],
            );

          }
          var articles = response?.articles??[];
          return ListView.separated(
              itemBuilder: (context, index) => ArticleItem(
                  articleModel: articles[index]
              ),
              separatorBuilder: (context, index) => SizedBox(height: 22.h,),
              itemCount: articles.length
          );
        },
    );
  }
}
