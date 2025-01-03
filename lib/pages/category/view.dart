import 'package:flutter/material.dart';
import 'package:flutter_ducafecat_news_getx/pages/category/widgets/news_page_list.dart';
import 'package:get/get.dart';

import 'controller.dart';

class CategoryPage extends GetView<CategoryController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NewsPageList(),
    );
  }
}
