import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:new_app/models/sourceResponse/SourceResponse.dart';

import '../models/ArticlesResponse/ArticlesResponse.dart';
class ApiManager{
  static Future<SourceResponse?> getSources(String category) async {
    //https://newsapi.org/v2/top-headlines/sources?apiKey=3a49385dfbd34b6fa177a876c2393d25&category=sports
    try{
      Uri url = Uri.https("newsapi.org","/v2/top-headlines/sources",{
        "apikey":"3a49385dfbd34b6fa177a876c2393d25",
        "category":category,
      });
      var response = await http.get(url);
      var json = jsonDecode(response.body);
      var sourceResponse = SourceResponse.fromJson(json);
      return sourceResponse;
    }catch(error){
      print(error.toString());
    }
  }
  static Future<ArticlesResponse?> getArticles(String sourceId) async {
    //https://newsapi.org/v2/everything?apiKey=3a49385dfbd34b6fa177a876c2393d25&sources=fox-sports
    try{
      Uri url = Uri.https("newsapi.org","/v2/everything",{
        "apikey":"3a49385dfbd34b6fa177a876c2393d25",
        "sources":sourceId
      });
      var response = await http.get(url);
      var json = jsonDecode(response.body);
      var articlesResponse = ArticlesResponse.fromJson(json);
      return articlesResponse;
    }catch(error){
      print(error);
    }


  }
  static Future<ArticlesResponse?> getSearchedArticles(String query) async {
    //https://newsapi.org/v2/everything?apiKey=3a49385dfbd34b6fa177a876c2393d25&sources=fox-sports
    try{
      Uri url = Uri.https("newsapi.org","/v2/everything",{
        "apikey":"3a49385dfbd34b6fa177a876c2393d25",
        "q":query
      });
      var response = await http.get(url);
      var json = jsonDecode(response.body);
      var articlesResponse = ArticlesResponse.fromJson(json);
      return articlesResponse;
    }catch(error){
      print(error);
    }


  }
}