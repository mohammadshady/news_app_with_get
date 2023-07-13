import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app_with_get/controller/news_controller.dart';
import 'package:news_app_with_get/shared/components/component.dart';

class SportsScreen extends StatelessWidget {
  const SportsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NewsController>(
      init: NewsController(),
      builder: (controller){
        var list = controller.sports;
        return articleBuilder(list);
      },

    );
  }
}
