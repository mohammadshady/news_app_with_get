import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app_with_get/controller/news_controller.dart';

class NewsLayout extends StatelessWidget {
  const NewsLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return GetBuilder<NewsController>(
      init: NewsController()..getBusiness()..getSports()..getScience(),
      builder: (controller){
        return Scaffold(
          appBar: AppBar(
            title: Text(
              'News App',
            ),
            actions:
            [
              IconButton(
                onPressed: (){},
                icon: Icon(
                  Icons.search,
                ),
              ),
              IconButton(
                onPressed: (){},
                icon: Icon(
                  Icons.brightness_4_outlined,
                ),
              ),
            ],
          ),
          body: controller.screens[controller.currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            items: controller.items,
            currentIndex: controller.currentIndex,
            onTap: (index){
              controller.changeBottomNav(index);
            },
          ),
        );
      },

    );
  }
}
