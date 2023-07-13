import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app_with_get/model/dio_helper.dart';
import 'package:news_app_with_get/view/business_screen.dart';
import 'package:news_app_with_get/view/science_screen.dart';
import 'package:news_app_with_get/view/sports_screen.dart';

class NewsController extends GetxController{
  int currentIndex = 0;

  List<Widget> screens = [
    BusinessScreen(),
    SportsScreen(),
    ScienceScreen(),
  ];

  List<BottomNavigationBarItem> items = [
    BottomNavigationBarItem(
        icon: Icon(Icons.business),
        label: 'Business',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.sports),
      label: 'Sports',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.science),
      label: 'Science',
    ),
  ];

  void changeBottomNav(index){
    currentIndex = index;
    update();
  }

  List<dynamic> business = [];
  void getBusiness(){
    update();
    DioHelper.getData(
      url: 'v2/top-headlines',
      query:
      {
        'country' : 'eg',
        'category' : 'business',
        'apiKey' : '263d0e9829c647d8adc55144159321d5',
      },
    ).then((value) {
      business = value.data['articles'];
      update();
    }).catchError((error){
      print(error.toString());
      update();
    });
    update();
  }

  List<dynamic> sports = [];
  void getSports(){
    update();
    DioHelper.getData(
      url: 'v2/top-headlines',
      query:
      {
        'country' : 'eg',
        'category' : 'sports',
        'apiKey' : '263d0e9829c647d8adc55144159321d5',
      },
    ).then((value) {
      sports = value.data['articles'];
      update();
    }).catchError((error){
      print(error.toString());
      update();
    });
    update();
  }

  List<dynamic> science = [];
  void getScience(){
    //update();
    DioHelper.getData(
      url: 'v2/top-headlines',
      query:
      {
        'country' : 'eg',
        'category' : 'science',
        'apiKey' : '263d0e9829c647d8adc55144159321d5',
      },
    ).then((value) {
      science = value.data['articles'];
      //update();
    }).catchError((error){
      print(error.toString());
      //update();
    });
    //update();
  }
}