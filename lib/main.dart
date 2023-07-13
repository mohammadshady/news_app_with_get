import 'package:flutter/material.dart';
import 'package:news_app_with_get/model/dio_helper.dart';
import 'package:news_app_with_get/view/news_layout.dart';

void main(){
  DioHelper.init();  //to ensure that dio is not null when call DioHelper.getData()
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NewsLayout(),
    );
  }
}


