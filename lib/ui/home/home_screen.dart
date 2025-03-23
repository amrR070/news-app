import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_app/ui/home/widgets/category_tab.dart';
import 'package:new_app/ui/home/widgets/custom_drawer.dart';
import 'package:new_app/ui/home/widgets/settings_tab.dart';

import '../categoryDetails/categoryDatailsWidget.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Widget selectedWidget;
  @override
  void initState() {
    // TODO: implement initState
    selectedWidget = CategoriesTab(onTab: selectNewCategory);
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
            image: AssetImage("assets/images/pattern.png",),
                fit: BoxFit.fill
        )
      ),
      child: Scaffold(
        drawer: Drawer(
          child: CustomDrawer(
            onPress: selectedTab,
          ),
        ),
        appBar: AppBar(
          title: Text(
            "News App",
          ),
        ),
        body: selectedWidget,
      ),
    );
  }

  selectedTab(Tabs tab){
    switch(tab){
      case Tabs.Categories:{
        selectedWidget = CategoriesTab(
          onTab: selectNewCategory,
        );
      }
      case Tabs.Settings:{
        selectedWidget = SettingsTab();
      }
    }
    setState(() {

    });
    Navigator.pop(context);
  }
  selectNewCategory(String id){
    selectedWidget = CategoryDatailsWidget(categoryId: id,);
    setState(() {
      
    });
  }
}
