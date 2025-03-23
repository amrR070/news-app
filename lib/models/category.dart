import 'dart:core';
import 'dart:ui';

import '../style/app_colors.dart';

class CategoryModel{
  String id;
  String title;
  String image;
  Color color;

  CategoryModel({
    required this.title,
    required this.id,
    required this.color,
    required this.image,
  });

  static List<CategoryModel> categories =[
    CategoryModel(id: 'sports',title: 'Sports',image: 'assets/images/ball.png',color: AppColors.redColor),
    CategoryModel(id: 'general',title: 'General',image: 'assets/images/Politics.png',color: AppColors.darkBlueColor),
    CategoryModel(id: 'health',title: 'Health',image: 'assets/images/health.png',color: AppColors.pinkColor),
    CategoryModel(id: 'business',title: 'Business',image: 'assets/images/bussines.png',color: AppColors.brownColor),
    CategoryModel(id: 'entertainment',title: 'Entertainment',image: 'assets/images/environment.png',color: AppColors.blueColor),
    CategoryModel(id: 'science',title: 'Science',image: 'assets/images/science.png',color: AppColors.yellowColor),
    ];


}