import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_app/models/ArticlesResponse/Article.dart';
import 'package:url_launcher/url_launcher.dart';

class NewsDetailsScreen extends StatelessWidget {
  static const String routeName = "newsDetails";
  const NewsDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var article = ModalRoute.of(context)?.settings.arguments as Article;
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
              image: AssetImage("assets/images/pattern.png",),
              fit: BoxFit.fill
          )
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            article.source?.name??"",
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CachedNetworkImage(
                imageUrl: article.urlToImage??"",
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
              Column(
                children: [
                  Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                          article.source?.name??"",
                          style: Theme.of(context).textTheme.headlineSmall

                      )),
                  SizedBox(height: 5.h,),
                  Text(
                      article.title??"",
                      style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          fontWeight: FontWeight.w500,
                          fontSize: 21.sp,
                          color: Colors.black
                      )
                  ),
                  SizedBox(height: 10.h,),
                  Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      article.publishedAt.toString(),
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ),
                  SizedBox(height: 30.h,),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                            article.content??"",
                            style: Theme.of(context).textTheme.headlineSmall

                        )),
                  ),
                  SizedBox(height: 70.h,),
                  InkWell(
                    onTap: () {
                      _launchUrl(article.url??"");
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "View Full Article"
                        ),
                        Icon(Icons.play_arrow_sharp)
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
  Future<void> _launchUrl(String url) async {
    Uri _url = Uri.parse(url);
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }
}
