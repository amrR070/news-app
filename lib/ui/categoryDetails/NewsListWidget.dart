import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../models/ArticleModel.dart';
import 'ArticleItem.dart';

class NewsListWidget extends StatelessWidget {
  const NewsListWidget({super.key});
  static List<ArticleModel> articles =[
    ArticleModel(
        title: "Cristiano Ronaldo: All-time leading scorer in men's international football",
        source: "Sports",
        date: DateTime.now(),
        image:"https://www.sportico.com/wp-content/uploads/2024/09/GettyImages-1734016483-e1726177787958.jpg?w=1280&h=719&crop=1"
    ),
    ArticleModel(
        title: "Cristiano Ronaldo: All-time leading scorer in men's international football",
        source: "Sports",
        date: DateTime.now(),
        image:"https://www.sportico.com/wp-content/uploads/2024/09/GettyImages-1734016483-e1726177787958.jpg?w=1280&h=719&crop=1"
    ),
    ArticleModel(
        title: "Cristiano Ronaldo: All-time leading scorer in men's international football",
        source: "Sports",
        date: DateTime.now(),
        image:"https://www.sportico.com/wp-content/uploads/2024/09/GettyImages-1734016483-e1726177787958.jpg?w=1280&h=719&crop=1"
    ),
    ArticleModel(
        title: "Cristiano Ronaldo: All-time leading scorer in men's international football",
        source: "Sports",
        date: DateTime.now(),
        image:"https://www.sportico.com/wp-content/uploads/2024/09/GettyImages-1734016483-e1726177787958.jpg?w=1280&h=719&crop=1"
    ),
    ArticleModel(
        title: "Cristiano Ronaldo: All-time leading scorer in men's international football",
        source: "Sports",
        date: DateTime.now(),
        image:"https://www.sportico.com/wp-content/uploads/2024/09/GettyImages-1734016483-e1726177787958.jpg?w=1280&h=719&crop=1"
    ),

  ];
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) => ArticleItem(articleModel: articles[index]),
        separatorBuilder: (context, index) => SizedBox(height: 22.h,),
        itemCount: articles.length
    );
  }
}
