import 'package:flutter/material.dart';
import 'package:flutter_ducafecat_news_getx/pages/main/widgets/categories.dart';
import 'package:flutter_ducafecat_news_getx/pages/main/widgets/channels.dart';
import 'package:flutter_ducafecat_news_getx/pages/main/widgets/news_list.dart';
import 'package:flutter_ducafecat_news_getx/pages/main/widgets/newsletter.dart';
import 'package:flutter_ducafecat_news_getx/pages/main/widgets/recommend.dart';
import 'package:get/get.dart';

import 'controller.dart';

class MainPage extends GetView<MainController> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          NewsCategoriesWidget(),
          Divider(height: 1),
          NewsRecommendWidget(),
          Divider(height: 1),
          NewsChannelsWidget(),
          Divider(height: 1),
          NewsListWidget(),
          Divider(height: 1),
          NewsletterWidget(),
        ],
      ),
    );
  }
}
