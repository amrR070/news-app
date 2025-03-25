import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_app/remot/Api_manager.dart';

import 'NewsListWidget.dart';

class CategoryDatailsWidget extends StatefulWidget {
  final String categoryId;
  CategoryDatailsWidget({ super.key,required this.categoryId});

  @override
  State<CategoryDatailsWidget> createState() => _CategoryDatailsWidgetState();
}

class _CategoryDatailsWidgetState extends State<CategoryDatailsWidget> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: ApiManager.getSources(widget.categoryId),
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
          return DefaultTabController(
            length : response?.sources?.length??0,
            child: Column(
              children: [
                Padding(
                  padding: REdgeInsets.all(12),
                  child: TabBar(
                      isScrollable: true,
                      dividerHeight: 0.h,
                      indicator: BoxDecoration(
                          color: Theme.of(context).colorScheme.primary,
                          borderRadius: BorderRadius.circular(25.r)
                      ),
                      tabs: response?.sources?.map((source) => Tab(
                        child: Container(
                          padding: REdgeInsets.all(12),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25.r),
                              border: Border.all(
                                color: Theme.of(context).colorScheme.primary,
                              )
                          ),
                          child: Text(
                            source.name??" ",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16.5,
                                fontWeight: FontWeight.w600
                            ),
                          ),
                        ),
                      )).toList()??[]
                  ),
                ),
                SizedBox(height: 10.h,),
                Expanded(
                  child: TabBarView(
                      children: response?.sources?.map((source) => NewsListWidget(
                        sourceId: source.id??"",
                      )).toList()??[]
                  ),
                )
              ],
            ),
          );
        },
    );
  }
}
